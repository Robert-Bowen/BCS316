#RB-BCS316
#Opens a file and reads it line by line.  Each line automaticallly goes into the default variable if it's not put somewhere else.
# We use that in the print $_; line to display each line.
use 5.23.0;

open(BIGFILE, "data.txt");
while(<BIGFILE>)
{print $_;}
