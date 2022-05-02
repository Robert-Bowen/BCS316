#RB-BCS316
#Finds the first occurrence of a string.
use 5.23.0;
my $long = "some very very long string";
my $right = substr($long, index($long, "l") );
say $long;
say $right;
say "End";
