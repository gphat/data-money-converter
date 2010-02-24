use Test::More;
use strict;

use lib qw(t/lib);

use Data::Currency;
use MyConverter;

my $curr = Data::Currency->new(
    value => 100
);

my $conv = MyConverter->new;
my $newcurr = $conv->convert($curr, 'GBP');
cmp_ok($newcurr->value, '==', 200, 'value changed');
cmp_ok($newcurr->code, 'eq', 'GBP', 'code_changed');
cmp_ok($newcurr->format, 'eq', $curr->format, 'format same');

done_testing;
