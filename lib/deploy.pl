use strict;
use warnings;
use lib 'lib';

use Jobeet::Schema;

my $schema = Jobeet::Schema->connect(
    'dbi:mysql:jobeet',
    'root',
    '',
);

$schema->deploy;
