#RB-BCS316
#Looks for the string the or The (not completely case sensitive).
use strict;
use warnings;
use 5.20.0;
my $line1;
say "Enter a line of text and I will tell you if it contains the phrase the:";
$line1 = <STDIN>;
chomp $line1; 
if ($line1 =~ m/the|The/) {say "\"the\" was found in \"$line1\"";}

