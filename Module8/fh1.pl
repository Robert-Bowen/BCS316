use warnings;
use strict;

my $filename = 'c:\StPerl\EADME.txt';

open(FH, '<', $filename) || die "The file you specified did not open.\nThe error code returned to Windows was $!";

while(<FH>){
   print $_;
}

close(FH);