#RB-BCS316
#This script shows an example of how to read data in using while (defined($line = <>)) which reads lines in from STDIN until canceled.
use 5.23.0;
my $line;
while (defined($line = <>)) { chomp($line); #<> is short for <STDIN>
print "It was $line that I saw!\n"; }

