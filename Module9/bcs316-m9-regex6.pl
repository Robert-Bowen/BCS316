#RB-BCS316
#This only evaluates to true if the line doesn't have the word "the" without being case sensitive.
use 5.28.0;
my $line1;
say "Enter a line of text and I will tell you if it contains the phrase the:";
$line1 = <STDIN>;
chomp $line1; 
if ($line1 !~ m/the/i) {say "\"the\" was not found in \"$line1\"";}

