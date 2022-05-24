#RB-BCS316
#This script shows an example of passing and array, a hash, and a scalar to a subroutine.
use 5.23.0;


my $scalar = 'text';
my @array = (1, 2, 3);
my %hash = (key1 => 'val1', key2 => 'val2');

test();
test($scalar);
test(@array);
test(%hash);

sub test { printf "( %s )\n", join ', ', @_ }

# %s takes the next argument and prints it as a string.
