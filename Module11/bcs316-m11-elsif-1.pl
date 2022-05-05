#RB-BCS316
#Shows the use of the elsif function
use 5.23.0;
## We declare, but do not define $bendy so it matches the first.  
## Try changing around my $bendy to store different types of scalar data
my $bendy;
if ( ! defined $bendy) {
print "The value is undef.\n";
} elsif ($bendy =~ /^-?\d+\.?$/) {
print "The value is an integer.\n";
} elsif ($bendy =~ /^-?\d*\.\d+$/) {
print "The value is a _simple_ floating-point number.\n";
} elsif ($bendy eq '') {
print "The value is the empty string.\n";
} else {
print "The value is the string '$bendy'.\n";
}

