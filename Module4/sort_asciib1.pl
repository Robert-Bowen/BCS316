
use 5.13.0;
use strict;
use warnings;
use Data::Dumper qw(Dumper);
my $feet;
my $teeth;

my @bunchOfLetters = qw (Z X C v b n m L W E a A B C Apple);

print "\n--Unsorted--\n";
say Dumper \@bunchOfLetters;


print "\n--Sorted built in perl--\n";

my @sortedLetters = sort (@bunchOfLetters);

say Dumper \@sortedLetters;


print "\n--Sorted passing the argument to sort (there are a number of ways to do this)--\n";

my @sortedLettersCorr = sort { lc($a) cmp lc($b) } @bunchOfLetters;

say Dumper \@sortedLettersCorr;
