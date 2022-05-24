#RB-BCS316
#Opens up a file and reads it into an array.  Then displays the 1st and 5th lines (element 0 and 4)
use 5.23.0;
open(BIGFILE,"data1.txt") || die "Can't open: $!";
@list=<BIGFILE>;
close BIGFILE;
print $list[0] . "\n";
print $list [4] . "\n";
