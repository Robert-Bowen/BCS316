#RB-BCS316
#This script shows an example an interaction with the OS.  
# Instead of using the localtime function, it queries the OS for the clock time directly.
use 5.23.0;
my $now = `date`; # grab the output of date
print "The time is now $now"; # newline already present
