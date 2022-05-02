#RB-BCS316
#This takes an array and puts the values into a hash.
# apple will be the key and red will be the value
# followed by blueberry as the key and blue the value, etc.

# It also uses Data::Dumper to quickly output the contents of the
# hash. In production you'd use a loop since Data::Dumper is fast
# for coding but not very pretty for a user.

use strict;
use warnings;
use 5.23.0;


use strict;
use warnings;
use Data::Dumper qw(Dumper);
 
my @fruits = qw(apple red blueberry blue grape purple mango orange);
 
my %color_of = @fruits; #assigns the array to the hash.
 
 
print Dumper \@fruits;
print Dumper \%color_of;
