#RB-BCS316
#This script shows another example of using the smartmatch feature (function)

# We can use the line use experimental 'smartmatch'; to suppress the warnings that smartmatch is experimental.  That line has to be above use 5.23.0 since 
# use 5.23.0 brings in use warnings; by default
use 5.23.0;

my @array1 = qw (Soap Water Shampoo);
my @array2 = qw (Soap Water Shampoo);
my @array3 = qw (Soap Water Lava);


say "The arrays 1 and 2 have the same elements!" if @array1 ~~ @array2;

#This will never print.

say "The arrays 3 and 4 have different elements!" if @array1 ~~ @array3;
