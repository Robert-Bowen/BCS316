#RB-BCS316
#Example of how to get array sizes.
use 5.23.0;
use warnings;
use strict;
#Creates an array with 3 elements - Work, Play and Dull
my @array1 = qw (Work Play Dull); 
print @array1; #Outputs the array raw (no delimiters between elements)
print "\n";
print scalar(@array1); #Outputs the array size
print "\n";
foreach my $arrayPrint (@array1) { #Loops through the array element at a 
                                   # time adding each element to the temporary
                                   # scalar $arrayPrint
                                   say $arrayPrint;
                                }


