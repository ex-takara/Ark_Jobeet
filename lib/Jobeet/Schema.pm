package Jobeet::Schema;
use strict;
use warnings;
use parent 'DBIx::Class::Schema';
use DateTime;

our $VERSION = '3';

__PACKAGE__->load_namespaces;

my $TZ = DateTime::TimeZone->new(name => 'Asia/Tokyo');
sub TZ    {$TZ}
sub now   {DateTime->now(time_zone => shift->TZ)}
sub today {shift->now->truncate(to => 'day')}

__PACKAGE__->load_components('Schema::Versioned');
__PACKAGE__->upgrade_directory('sql/');

1;
