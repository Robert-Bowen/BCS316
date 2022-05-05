#RB-BCS316
#Looks for different variations of the word "the" by looking for either an upper or lowercase "T"
use 5.23.0;
my $line1;
say "Enter a line of text and I will tell you if it contains the phrase the:";
$line1 = <STDIN>;
chomp $line1; 
if ($line1 =~ m/[T|t]he/) {say "\"the\" was found in \"$line1\"";}

