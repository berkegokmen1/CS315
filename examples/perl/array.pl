use warnings;
use diagnostics;

use feature 'say';
use feature 'switch';

use v5.16;

my @abcs = ('a' .. 'z');

print join(", ", @abcs), "\n";

for my $info (@abcs) { print $info, " - "; } print "\n";

# for (@abcs) { print $_; } say;

my @my_name	= @abcs[0, 4];
say join("", @my_name);

my $customers = "Sue Sally Paul";
my @cust_array = split / /, $customers;
print join(", ", @cust_array), "\n";

@cust_array = reverse @cust_array;
@cust_array = reverse sort @cust_array;

my @number_array = (1,2,3,4,5,6);

my @odds_array = grep {$_ % 2} @number_array;
print join(", ", @odds_array), "\n";

my @dbl_array = map {$_ * 2} @number_array;
print join(", ", @dbl_array), "\n";
