local $x = 123;

sub foo {print "$x\n";}

{
	local $x = 456;
	foo;
}

foo;