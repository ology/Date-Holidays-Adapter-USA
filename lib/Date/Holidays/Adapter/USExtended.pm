package Date::Holidays::Adapter::USExtended;

# ABSTRACT: Adapter for the USExtended module holidays

use strict;
use warnings;

use base qw(Date::Holidays::Adapter);

our $VERSION = '0.0200';

=head1 DESCRIPTION

C<Date::Holidays::Adapter::USExtended> is the L<Date::Holidays> adapter for L<Date::Holidays::USExtended>.

=cut

=head1 FUNCTIONS

=head2 holidays

  $holidays = holidays($year);

Return the known holidays for the given year.

=cut

sub holidays {
    my ($self, %params) = @_;

    my $dh = $self->{_adaptee}->new;

    if ($dh) {
        return $dh->holidays($params{year});
    } else {
        return;
    }
}

=head2 is_holiday

  $holiday = is_holiday($year, $month, $day);

Return the holiday on the given day.

=cut

sub is_holiday {
    my ($self, %params) = @_;

    my $dh = $self->{_adaptee}->new;

    if ($dh) {
        return $dh->is_holiday($params{year}, $params{month}, $params{day});
    } else {
        return '';
    }
}

1;
__END__

=head1 SEE ALSO

L<Date::Holidays>

L<Date::Holidays::Adapter>

L<Date::Holidays::USA>

=cut
