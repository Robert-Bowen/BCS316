#RB-BCS316
#This script shows an example of a elsif function.
use 5.23.0;
## We declare, but do not define $dino.  This will result in the first match being met.
my $dino;
if ( ! defined $dino) {
print "The value is undef.\n";
} elsif ($dino =~ /^-?\d+\.?$/) {
print "The value is an integer.\n";
} elsif ($dino =~ /^-?\d*\.\d+$/) {
print "The value is a _simple_ floating-point number.\n";
} elsif ($dino eq '') {
print "The value is the empty string.\n";
} else {
print "The value is the string '$dino'.\n";
}
