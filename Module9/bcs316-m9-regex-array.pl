#RB-BCS316
#Creates an array with elements.  Some elements have a number in them.  
# Then it matches on lines without a number in them.
use 5.23.0;
my @array = qw (Robert R0berta William Samantha Batman1 Superman R0be Rhinestone Reiauo);
my @grepArray =  grep (!/\d/, @array);
foreach my $element (@grepArray) {say $element;}



