#RB-BCS316
#Shows the use of the elsif function by taking user input.
# Please expermint with different inputs.
use 5.23.0;
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
