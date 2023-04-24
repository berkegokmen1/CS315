use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

use v5.16;

my $age = 80;
my $is_not_legal = 1;
my $age_last_exam = 15;

if ($age < 16) {
	say "You cannot drive";
} elsif (!$is_not_legal) {
	say "You cannot drive";
} else {
	say "You can drive"
}

# eq ne lt le gt ge
if ('a' eq 'b') {
	say "a equals b";
} else {
	say "a does not equal b";
}

unless (!$is_not_legal) {
	say "Get sober";
}

say (($age > 18) ? "Can vote" : "Cannot vote");