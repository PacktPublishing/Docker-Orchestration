package MyApp::Schema::Result::Book;
use base qw/DBIx::Class::Core/;

__PACKAGE__->table('book');

__PACKAGE__->add_columns(
    bookid => { data_type => 'integer', is_auto_increment => 1},
    title  => { data_type => 'text', },
    authorid => { data_type => 'integer', },);
__PACKAGE__->set_primary_key('bookid');

1;
