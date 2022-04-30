use strict;
use warnings;
use 5.13.0;
use Term::ANSIScreen qw(cls);
cls(); #Clears the screen without having to call an OS process to do it.


sub fixscreen {my $counter = 0; while ($counter < 5) {say "";$counter ++;}}
fixscreen; #Outputs 5 blank lines

say "Finds the word jumps which is at position 20 and is 5 characters long.";
say "We found this by manually counting.  We can use index to help with this.";

fixscreen;
my $phrase = "the quick brown fox jumps over the lazy dog.  why is that darn dog so utterly lazy?";
my $action = substr ($phrase, 20, 5);
say $action;
fixscreen;
