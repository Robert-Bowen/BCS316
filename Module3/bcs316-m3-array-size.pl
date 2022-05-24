#RB-BCS316
#Another example of how to get array sizes.

use 5.23.0;
use warnings;
use strict;
my @array1 = qw (Work Play Dull); #Creates an array with 3 elements - Work, Play and Dull
print @array1; #Outputs the array raw (no delimiters between elements)
print "\n";
print scalar(@array1); #Outputs the array size
print "\n";


