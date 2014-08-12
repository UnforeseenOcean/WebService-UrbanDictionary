use Test::More skip_all => "todo: update tests";
BEGIN { plan tests => 1 }
use WebService::UrbanDictionary;

my $link = permalink('perl');

ok($link =~ m/http:\/\//);