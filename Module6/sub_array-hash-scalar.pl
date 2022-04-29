use strict;
use warnings;

my $scalar = 'text';
my @array = (1, 2, 3);
my %hash = (key1 => 'val1', key2 => 'val2');

test();
test($scalar);
test(@array);
test(%hash);

sub test { printf "( %s )\n", join ', ', @_ }

# %s takes the next argument and prints it as a string.