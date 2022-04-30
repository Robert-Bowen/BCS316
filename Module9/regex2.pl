#Matches the word the (case sensitive).  "the" must have a space before and after it.
use strict;
use warnings;
use 5.28.0;
my $line1;
say "Enter a line of text and I will tell you if it contains the phrase the:";
$line1 = <STDIN>;
chomp $line1; 
if ($line1 =~ m/ the /) {say "\"the\" was found in \"$line1\"";}

