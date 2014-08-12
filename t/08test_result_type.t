use Test::More skip_all => "todo: update tests";
BEGIN { plan tests => 1 }
use WebService::UrbanDictionary;

my $type = result_type('perl');

ok($type =~ m/exact/);