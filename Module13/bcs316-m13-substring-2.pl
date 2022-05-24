#RB-BCS316
#This script shows another example of using the substr (substring) function.
use 5.23.0;


say "";
say "Replaces the word quick with the word naughty.  We are still manually counting the characters to get the location";
say "";
my $phrase = "the quick brown fox jumps over the lazy dog.  why is that darn dog so utterly lazy?";
say "Original phrase = " . $phrase;

my $action = substr ($phrase, 4, 5) = "naughty";
#need to give the length of the word you are replacing the original word with or it stops outputting.

say "";
say "The new phrase = " . $phrase;
say "";
