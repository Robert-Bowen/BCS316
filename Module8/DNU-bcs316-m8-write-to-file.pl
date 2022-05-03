#RB-BCS316
#This script shows an example of
use 5.23.0;
my $num1;
open(BIGFILE,">>datawrite3.txt") || die "Can't open: $!";
if (! print BIGFILE $num1)
{warn "Cannot write to the file!";
}
say BIGFILE "Line 1";
say BIGFILE "Line 2";
say BIGFILE "Line 3";
close BIGFILE;




