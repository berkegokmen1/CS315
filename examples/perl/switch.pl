use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

use v5.16;

my $age_old = 18;

given ($age_old) {
	when ($_ > 16) {
		say "Can drive";
		continue;
	}
	when ($_ > 17) {
		say "Go vote";
	}
	default {
		say "Nothing special";
	}
}