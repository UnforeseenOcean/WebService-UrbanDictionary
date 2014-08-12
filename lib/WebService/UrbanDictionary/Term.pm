package WebService::UrbanDictionary::Term;

# ABSTRACT: The Term object filled by WebService::UrbanDictionary objects.

use Moo;
use WebService::UrbanDictionary::Term::Definition;

has 'term'        => ( is => 'ro' );
has 'tags'        => ( is => 'ro' );
has 'result_type' => ( is => 'ro' );
has 'definitions' => ( is => 'ro' );
has 'sounds'      => ( is => 'ro' );

sub BUILD {
	my $self = shift;
	$self->{definitions} = [
		map { WebService::UrbanDictionary::Term::Definition->new($_) } @{$self->{list}}
	];
}

sub definition {
	my $defs = shift->definitions;
	return (wantarray ? @$defs : $defs->[0]->definition);
}

1;

=for Pod::Coverage BUILD

=head1 SYNOPSIS

	use WebService::UrbanDictionary;

	my $ud = WebService::UrbanDictionary->new;

	my $results = request('perl'); 

	my $definition = $results->definition;

=head1 DESCRIPTION

WebService::UrbanDictionary provides an object-oriented to UrbanDictionary's online JSON API.

=head2 Methods

=over 12

=item C<< definition >>

Returns either an array of hashes containing API data, or the first definition of the word depending on context.
These elements can then be accessed with the methods in L<WebService::UrbanDictionary::Term::Definition>.

=back

=head1 SEE ALSO

L<WWW::Search::UrbanDictionary>

=cut
