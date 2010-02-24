use inc::Module::Install;

name     'Data-Currency-Converter';
all_from 'lib/Data/Currency/Converter.pm';
author   q{Cory G Watson <gphat@cpan.org>};
license  'perl';

requires 'Moose';

build_requires 'Test::More';

WriteAll;

