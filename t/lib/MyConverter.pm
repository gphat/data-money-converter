package #
    MyConverter;
use Moose;

with 'Data::Currency::Converter';

sub convert {
    my ($self, $curr, $code) = @_;

    return $curr->clone(
        value => $curr->value * 2,
        code => $code
    );
}

1;
