#RB-BCS316
#This example shows how to use the join function.
#From the text.  Creates a scalar called $x that joins together the elements provided using a colon
use 5.23.0;
my $x = join ":", 4, 6, 8, 10, 12; # $x is "4:6:8:10:12"
say "4, 6, 8, 10, 12 joined by a colon is: $x";

