#!/usr/bin/perl
use warnings;
use strict;

use FindBin;
use lib ("$FindBin::Bin/lib");

use MyApp::Schema;
use Text::Template;
use Getopt::Long;

my %config = (
    db       => $ENV{MYSQL_DATABASE} || 'db',
    user     => $ENV{MYSQL_USER}     || 'myapp',
    password => $ENV{MYSQL_PASSWORD} || 'password',
    );

my $init = 0;
my $command = '';
GetOptions ("init" => \$init, "command=s" => \$command);

print "Command: $command\n";

# wait for mysql
my $sleep = 60;
print "Waiting $sleep seconds for mysql\n";
sleep $sleep;

if ($init) {
    print "Initializing database\n";
    my $schema = MyApp::Schema->connect(
	"dbi:mysql:$config{db};host=db",
	$config{user},
	$config{password},
	);
    $schema->deploy();

    # add sample data
    my $author;

    $author = $schema->resultset('Author')->create({name => "Asimov, Isaac"});
    $author->create_related('books' => { title => "I, Robot" });
    $author->create_related('books' => { title => "Foundation" });

    $author = $schema->resultset('Author')->create({name => "Beagle, Peter S."});
    $author->create_related('books' => { title => "Last Unicorn, The" });

    $author = $schema->resultset('Author')->create({name => "Weir, Andy"});
    $author->create_related('books' => { title => "Martian, The" });
}
else {
}

my $template = Text::Template->new(
    TYPE => 'FILE',
    SOURCE => '/var/www/config.yml.in'
);

if (open my $CONFIG, '>', '/var/www/config.yml') {
    print $CONFIG $template->fill_in(HASH => \%config);
    close $CONFIG;
}

## start the app
print "Starting the app\n";

my @cmd = ();
if ($command eq 'shotgun') {
    @cmd = qw(plackup -L Shotgun bin/app.psgi);
}
else {
    @cmd = qw(starman --workers 2 bin/app.psgi);
}

exec @cmd;
