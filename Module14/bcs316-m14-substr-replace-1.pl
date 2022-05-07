#RB-BCS316
#This script shows an example of using the substr (substring) function.
use 5.23.0;
my $wordchange = "fox";
my $phrase = "the quick brown fox jumps over the lazy dog.";
my $action = substr ($phrase, 20, 5);
say "\nThe original phrase was:\n\t $phrase\n";
say "We found the string $action at position 20.  It was 5 characters long\n";
substr ($phrase, 20, 5) = "leaped"; #swaps out leaped for jumps
say "After the replacement via substr:\n\t $phrase\n";
my $fox = index ($phrase, $wordchange); #finds where the word "fox" is.
substr ($phrase, $fox, 3) = "rabbit"; #swaps out rabbit for fox
say "After the replacement using index and substr:\n\t $phrase\n";


