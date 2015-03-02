package Jobeet::Schema;
use strict;
use warnings;
use parent 'DBIx::Class::Schema';
use DateTime;

__PACKAGE__->load_namespaces;

my $TZ = DateTime::TimeZone->new(name => 'Asia/Tokyo');
sub TZ    {$TZ}
sub now   {DateTime->now(time_zone => shift->TZ)}
sub today {shift->now->truncate(to => 'day')}

1;
