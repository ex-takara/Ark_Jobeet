package Jobeet::Schema::ResultSet::Category;
use strict;
use warnings;
use Jobeet::Models;
use parent 'DBIx::Class::ResultSet';

sub get_with_jobs {
    my $self = shift;

    $self->search(
        { 'jobs.expires_at' => { '>=', models('Schema')->now } },
        { join => 'jobs', group_by => 'me.name' },
    );
}

1;
