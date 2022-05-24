#RB-BCS316
#This script shows an example of using the substr (substring) function.
use 5.23.0;

say "Finds the word jumps which is at position 20 and is 5 characters long.";
say "We found this by manually counting.  We can use index to help with this.";

my $phrase = "the quick brown fox jumps over the lazy dog.  why is that darn dog so utterly lazy?";
my $action = substr ($phrase, 20, 5);
say $action;
