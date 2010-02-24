#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Data::Currency::Converter' );
}

diag( "Testing Data::Currency::Converter $Data::Currency::Converter::VERSION, Perl $], $^X" );
