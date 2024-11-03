package # hide from PAUSE
    HashDataRole::Display::Resolution::Resolution2Names;

use strict;
use Role::Tiny;
with 'HashDataRole::Source::Hash';

around new => sub {
    require Display::Resolution;
    my $orig = shift;

    my $hash0 = Display::Resolution::list_display_resolution_names();
    my $hash = {};
    for my $name (sort keys %$hash0) {
        my $res = $hash0->{$name};
        if (defined $hash->{$res}) {
            $hash->{$res} .= ";$name";
        } else {
            $hash->{$res} = $name;
        }
    }

    $orig->(@_, hash => $hash);
};

package HashData::Display::Resolution::Resolution2Names;

use strict;
use Role::Tiny::With;
with 'HashDataRole::Display::Resolution::Resolution2Names';

# AUTHORITY
# DATE
# DIST
# VERSION

# STATS

1;
# ABSTRACT: Mapping of display resoultion resolutions and all their names

=head1 DESCRIPTION

This is a L<HashData> interface for L<Display::Resolution>.


=head1 SEE ALSO

L<Display::Resolution>

L<HashData>

=cut
