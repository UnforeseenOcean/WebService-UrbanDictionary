use Test::More skip_all => "todo: update tests";
BEGIN { plan tests => 1 }
use WebService::UrbanDictionary;

my $id = defid('perl');

ok($id =~ m/[0-9]+/);