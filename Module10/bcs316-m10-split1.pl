#RB-BCS316
#This script shows an example of using the split function.
# It takes a scalar with "ab cd ef gh ij" separated by spaces and populates 
# the array @words using the space as a delimited
use 5.23.0;
my $str = "ab cd ef gh ij";
my @words = split / /, $str; #element 0 will be "ab" element 1 will be "cd", etc.
say "We started with $str";
say "$str was split at each space resulting in:";
foreach my $word (@words) 
	{say "$word";}


