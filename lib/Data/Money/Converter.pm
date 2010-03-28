package Data::Money::Converter;
use warnings;
use strict;

our $VERSION = '0.01';

use Moose::Role;

requires 'convert';

1;

__END__

=head1 NAME

Data::Money::Converter - Moose Role for Data::Money Converters

=head1 DESCRIPTION

This simple module provides a base for building currency conversion backends
for Data::Money.  You can use this module either as a basis for understanding
the common features or as a guide for implmenting your own converter.

=head1 SYNOPSIS

    package MyConverter;
    use Moose;
    
    with 'Data::Money::Converter';

    sub convert {
        my ($self, $money, $code) = @_;

        # convert $money->value to $code and return a new Data::Money object
    }

    1;

=head1 METHODS

This role requires that you implement a C<convert> method. It should expect
2 arguments: an isntance of L<Data::Money> and a 3-character currency code.
It does not do any checking of the code as not all conversion implementations
may support all codes.  It is recommended that you consult L<Locale::Currency>.

=head1 AUTHOR

Cory G Watson, C<< <gphat at cpan.org> >>

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2010 Cory G Watson.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.
