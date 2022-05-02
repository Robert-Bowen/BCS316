#RB-BCS316
#Shows the use of the elsif function
use 5.23.0;
## We declare, but do not define $dino so it matches the first.  
## Try changing around my $dino to store different types of scalar data
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
