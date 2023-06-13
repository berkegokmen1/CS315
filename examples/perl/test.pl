$var = 10;

sub f1 {
	my $var = 31;

	sub f2 {
		print "$var\n";
	}

	f2;
}

f2;