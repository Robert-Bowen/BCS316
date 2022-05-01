#Finds a string and replaces it.
use strict;
use warnings;
use 5.13.0;
use Term::ANSIScreen qw(cls); 
cls(); #We use this to prevent a call to the OS to do it.


sub fixscreen {my $counter = 0; while ($counter < 5) {say "";$counter ++;}}
fixscreen;

say "Finds the word jumps which is at position 20 and is 5 characters long.";
say "We found this by manually counting.  We can use index to help with this.";

fixscreen;
my $phrase = "the quick brown fox jumps over the lazy dog.  why is that darn dog so utterly lazy?";
my $action = substr ($phrase, 20, 5);
say $action;
fixscreen;
