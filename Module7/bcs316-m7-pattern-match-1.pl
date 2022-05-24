#RB-BCS316
#This script shows an example of using a simple pattern match.  We will do more with regular expressions in Modules 9 and 10
use 5.23.0;
$_ = "Yo Gabba Gabba";
if (/abba/) {
print "match !\n";
}
