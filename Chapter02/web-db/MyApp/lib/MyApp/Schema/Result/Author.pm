package MyApp::Schema::Result::Author;
use base qw/DBIx::Class::Core/;

__PACKAGE__->table('author');

__PACKAGE__->add_columns(
    authorid => { data_type => 'integer', is_auto_increment => 1},
    name     => { data_type => 'text', },
    );
__PACKAGE__->set_primary_key('authorid');
__PACKAGE__->has_many(books => 'MyApp::Schema::Result::Book', 'authorid');

1;
