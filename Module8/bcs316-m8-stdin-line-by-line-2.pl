#RB-BCS316
#This script shows another example of how to read data in using while (<STDIN>) - which reads lines in from STDIN until canceled.
use 5.23.0;

while (<STDIN>) {
print "I saw $_"; } #$_ is the default variable.  Since we don't read STDIN into a scalar it goes into the default variable.
