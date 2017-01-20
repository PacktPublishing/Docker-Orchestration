package MyApp;
use Dancer2;
use Dancer2::Plugin::DBIC;

our $VERSION = '0.1';

get '/' => sub {
    template 'index',
	{ authors => schema->resultset('Author')->search_rs(
	      { 'name' => { -like => '%'}},
	      { 'order_by' => { -asc => 'name' }})
	};
};


true;
