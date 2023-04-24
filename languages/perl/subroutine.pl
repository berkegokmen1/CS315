use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

use v5.16;

sub get_random_from_max {
	my ($max_num) = @_;

	$max_num ||= 11;
	return int(rand $max_num);
}

say get_random_from_max(100);

sub get_sum {
	my $sum = 0;
	foreach my $val (@_) {
		$sum += $val;
	}

	return $sum;
}

say get_sum(1,2,3,4,5,655,6,8);