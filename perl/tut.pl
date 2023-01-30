
use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

use v5.16;

print "Hello World\n";

my $name = "Berke";
my ($age, $street) = (22, "st");
my $info_primary = "$name, age: $age, st: $street \n";

# print $info_primary
# say $info_primary

printf("%u \n", 121212323 + 1);

my ($first, $second) = (1, 2);

($first, $second) = ($second, $first);

say "$first, $second";