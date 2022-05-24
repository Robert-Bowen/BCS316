#RB-BCS316
#This script shows an example of using a simple pattern match.  We will do more with regular expressions in Modules 9 and 10
use 5.23.0;

## We don't match because we are case sensitive ##

$_ = "Yo Gabba Gabba";
if (/gabba/) {
print "match !\n";
}
