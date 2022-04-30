#Performs a basic sort on the array. We will learn better ways 
# later in the course.
use 5.28.0;
use warnings;
use strict;
my @array1 = qw (Work Play Dull);
print @array1;
print "\n";
print scalar(@array1);
print "\n";
my @sorted = sort @array1;
print @sorted;
print "\n";

