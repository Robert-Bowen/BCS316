#RB-BCS316
#This script shows an example of how to open a file using Windows filepaths.
use 5.23.0;

my $filename = 'c:\StPerl\README.txt'; #create this file and change the path if necessary.

open(FH, '<', $filename) || die "The file you specified did not open.\nThe error code returned to Windows was $!";

while(<FH>){
   print $_;
}

close(FH);
