#RB-BCS316
#This script shows an example of how to properly sort hashes.
use 5.23.0;
use List::MoreUtils qw(mesh);

my @aa = qw/ 1 6 8 4 5 /;
my @bb = qw/ a c d f w /;

my %x = mesh @aa, @bb;
print join(" ", sort keys %x), "\n";
print join(" ", @x{sort keys %x}), "\n";
