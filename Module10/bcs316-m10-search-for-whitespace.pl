#RB-BCS316
#This script shows an example of looking for whitespace.
use 5.23.0;
## We don't match because we are case sensitive ##
use strict;
use warnings;
use 5.13.0;
$_ = "Yo Gabba Gabba";
if (/\p{Space}/) {
print "There were spaces found !\n";
}
