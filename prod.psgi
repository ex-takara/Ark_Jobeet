use lib 'lib';

use Plack::Builder;
use jobeet;
use jobeet::Models;

my $app = jobeet->new;
$app->setup;

# preload models
my $models = jobeet::Models->instance;
$models->load_all;

my $app = jobeet->new;
builder {
    $app->handler;
};
