use inc::Module::Install;

name     'Data-Money-Converter';
all_from 'lib/Data/Money/Converter.pm';
author   q{Cory G Watson <gphat@cpan.org>};
license  'perl';

requires 'Moose';
requires 'Data::Money';

build_requires 'Test::More';

WriteAll;

