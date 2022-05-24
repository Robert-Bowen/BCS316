#RB-BCS316
#This script shows an example of how to write to a file
use 5.23.0;

my $num1 = "Some data";
open(BIGFILE,">>datawrite3.txt") ; # >> opens the file with append (won't replace the file if it exists)
#|| die "Can't open: $!";
if (! print BIGFILE $num1) # In peoplespeak - If I can't write to the file kick off the code in squiggly brackets.
{warn "Cannot write to the file!";
}
say BIGFILE "Line 1";
say BIGFILE "Line 2";
say BIGFILE "Line 3";
close BIGFILE;




