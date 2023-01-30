use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

use v5.16;

my %employees = (
	"Sue" => 35,
	"Paul" => 43,
	"Sam" => 39
);

printf("Sue is %d \n", $employees{Sue})

# $employees{"Frank"} = 44;

# while (my ($k, $v) = each %employees) {
# 	say $k;
# }