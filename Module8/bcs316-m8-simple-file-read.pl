#RB-BCS316
#This script shows a basic example of opening a file and displaying each line as it's read from the file.
use 5.23.0;
open(BIGFILE, "data.txt");
$line=<BIGFILE>;
print $line ;
close BIGFILE;
