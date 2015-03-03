package Jobeet::Schema::ResultSet::Job;
use strict;
use warnings;
use utf8;
use parent 'DBIx::Class::ResultSet';

use Jobeet::Models;

sub get_active_jobs {
    my $self = shift;
    my $attr = shift || {};

    $attr->{rows} ||= 10;

    $self->jobs(
        { expires_at => { '>=', models('Schema')->now } },
        {   order_by => { -desc => 'created_at' },
            rows     => $attr->{rows},
        }
    );
}

1;
