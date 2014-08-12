use Test::More skip_all => "todo: update tests";
BEGIN { plan tests => 1 }
use WebService::UrbanDictionary;

my @tags = tags('perl');

ok($tags[0] =~ m/[A-Za-z0-9\+\-_\[\] ]/);