package Date::Holidays::Adapter::USA;

# ABSTRACT: DEPRECATED - Adapter for USA holidays

use strict;
use warnings;

use base qw(Date::Holidays::Adapter);

our $VERSION = '0.0109_1';

=head1 DESCRIPTION

C<Date::Holidays::Adapter::USA> is now deprecated, but was the
L<Date::Holidays> adapter for L<Date::Holidays::USA>.

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
