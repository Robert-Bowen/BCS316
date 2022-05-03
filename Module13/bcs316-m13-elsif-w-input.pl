#RB-BCS316
#This script shows an example of a elsif function.
use 5.23.0;
## We take user input this time for the $dino variable.  This results in the user's input matching whichever regex condition evaluates to true.
my $dino = <STDIN>;
chomp $dino;
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
