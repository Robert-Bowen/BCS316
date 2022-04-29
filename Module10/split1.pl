use 5.13.0; 
my $str = "ab cd ef gh ij";
my @words = split / /, $str;
say "We started with $str";
say "$str was split at each space resulting in:";
foreach my $word (@words) 
	{say "$word";}

