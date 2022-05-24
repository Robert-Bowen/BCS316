#RB-BCS316
#Uses a foreach loop with a scalar variable to loop through
# the array and show all of the elements.

#This is the more common way of doing things.

use 5.23.0;
use strict;
use warnings;
my @Array = qw (Santa Easter_Bunny Leprechaun Yoda); #Creates array with 4 elements

foreach my $element (@Array)
{
      say $element;
}
