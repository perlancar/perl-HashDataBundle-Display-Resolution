package # hide from PAUSE
    HashDataRole::Display::Resolution::Name2Resolution;

use strict;
use Role::Tiny;
with 'HashDataRole::Source::Hash';

around new => sub {
    require Display::Resolution;
    my $orig = shift;
    my $hash = Display::Resolution::list_display_resolution_names();
    $orig->(@_, hash => $hash);
};

package HashData::Display::Resolution::Name2Resolution;

use strict;
use Role::Tiny::With;
with 'HashDataRole::Display::Resolution::Name2Resolution';

# AUTHORITY
# DATE
# DIST
# VERSION

# STATS

1;
# ABSTRACT: Mapping of display resoultion names and their resolutions

=head1 DESCRIPTION

This is a L<HashData> interface for L<Display::Resolution>.


=head1 SEE ALSO

L<Display::Resolution>

L<HashData>

=cut
