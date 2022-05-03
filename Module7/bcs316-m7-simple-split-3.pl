#RB-BCS316
#This script shows another example of a simple split in Perl.  Uses Data::Dumper to quickly display the contents of the array.
# This one separates on a colon rather than a space and then shows each element.  
# We then do it the correct way with a loop.  

use 5.23.0;
my $mac = "4a:00:03:f5:97:c0"; #Mac is the Media Access Control address of a computer if you were curious.
my @words = split /:/, $mac;
say "Done the long way (each element displayed was a line of code)";
say $words [0] . " Element 0";
say $words [1] . " Element 1";
say $words [2] . " Element 2";
say $words [3] . " Element 3";
say $words [4] . " Element 4";
say $words [5] . " Element 5";

say "Done the short way (loop)";
my @a = (0..5); #Creates an array with the numbers 0 to 5
for (@a){say $words[$_] . " Element $_";} #Loops through the array putting each element into the default variable
                                                #Then it uses the default variable as the index and in the display to the user.
