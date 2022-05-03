#RB-BCS316
#This script shows how to combine substr and index.  
use 5.23.0;
use Term::ANSIScreen qw(cls); # This clears the screen
cls();


sub fixscreen {my $counter = 0; while ($counter < 5) {say "";$counter ++;}} #subroutine to clear the screen.
fixscreen;

say "Replaces the word lazy with sluggish.  Uses index to find where the word lazy is";
fixscreen;
my $phrase = "the quick brown fox jumps over the lazy dog.  why is that darn dog so utterly lazy?";
say "Original phrase = " . $phrase;

my $action = substr ($phrase, index($phrase, "lazy"),4) = "sluggish";

## It's important to remember to put the length of the original word you are replacing or it replaces the rest of the line with that word

say "USING INDEX";
say "The new phrase = " . $phrase;
say "";
say "USING RINDEX on the phrase after using INDEX will now replace the instance at the end";
my $action = substr ($phrase, rindex($phrase, "lazy"),4) = "sluggish";
say "The new phrase = " . $phrase;
say "";

## Obviously it's easier to do with regular expressions


fixscreen;
