#RB-BCS316
use 5.23.0;
#This script shows a basic example of opening a file and 
# displaying each line as it's read from the file.
open(BIGFILE, "data.txt"); #BIGFILE is the name of the filehandle
$line=<BIGFILE>; #Since BIGFILE is the name of the filehandle, 
                 # we only use that going forward.
print $line ; #Outputs each line as it's read in.
close BIGFILE; #Properly closes the filehandle.





