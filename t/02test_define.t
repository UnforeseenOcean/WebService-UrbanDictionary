use Test::More;
BEGIN { plan tests => 2 }
use WebService::UrbanDictionary;

my $ud = WebService::UrbanDictionary->new;

ok(defined $ud);

my $defs = $ud->request("perl");

# foreach (@{$defs->definitions}) {
# 	note($_->definition); 
# }

ok (defined $defs);

