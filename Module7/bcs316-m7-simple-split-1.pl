#RB-BCS316
#This script shows an example of a simple split in Perl.  Uses Data::Dumper to quickly display the contents of the array.
use 5.23.0;
use Data::Dumper qw(Dumper);
 
my $str = "ab cd ef gh ij"; #one string of 12 characters separated into 2 letters by spaces.
my @words = split / /, $str; #populate the array @words with each element being the spaced value
                             #example:
                             #@words[0] will be "ab"
                             #@words[1] will be "cd"
print Dumper \@words;
