use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

use v5.16;

my $long_string = "Random Long String";

say "Lenght of string ", length $long_string;

printf("Long is at %d\n", index $long_string, "Long");

printf("r from right is at %d\n", rindex $long_string, "n");

$long_string = $long_string . ' ...expanded';

say $long_string;