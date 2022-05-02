#RB-BCS316
#This looks for the word "the" without being case sensitive.
use 5.23.0;
my $line1;
say "Enter a line of text and I will tell you if it contains the phrase the:";
$line1 = <STDIN>;
chomp $line1; 
if ($line1 =~ m/the/i) {say "\"the\" was found in \"$line1\"";}

