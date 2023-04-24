my $var = 10;

sub f1 {
	local $var = 31;

	sub f2 {
		print "$var\n";
	}

	f2;
}

f1;