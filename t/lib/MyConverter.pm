package #
    MyConverter;
use Moose;

with 'Data::Money::Converter';

sub convert {
    my ($self, $money, $code) = @_;

    return $money->clone(
        value => $money->value * 2,
        code => $code
    );
}

1;
