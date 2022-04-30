#Uses a foreach loop with a scalar variable to loop through
# the array and show all of the elements.

#This is the more common way of doing things.

use 5.28.0;
use strict;
use warnings;
my @Array = qw (Santa Easter_Bunny Leprechaun Yoda);

foreach my $element (@Array)
{
      say $element;
}