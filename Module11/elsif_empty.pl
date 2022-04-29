use 5.13.0;
use strict;
use warnings;
my $dino = "";
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