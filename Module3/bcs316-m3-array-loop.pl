#RB-BCS316
#Uses a foreach loop with the default variable to loop through
# the array and show all of the elements.

use 5.28.0;
use strict;
use warnings;
my @Array = qw (Santa Easter_Bunny Leprechaun Yoda);

foreach (@Array)
{
      say $_;
}
