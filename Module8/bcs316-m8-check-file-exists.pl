#RB-BCS316
#This script shows an example of how to check to see if a file exists.  The script tries to open the file and if it can't it assumes it doesn't exist.
# There are better ways of doing this, but it's a good start.
use 5.23.0;
if (open(BIGFILE, "datafile.dat"))
{ print "The file exists\n"; }
else
{ print "Cannot open the file!\n";
exit 0;} #exit 0 sends the 0 code to the OS.
