#Load a hash and then display the keys and values

#They will display all together first and then we will loop through # and display them correctly

# Note - When these are displayed they will be out of order because # of how perl stores them to be as efficient as possible.  You can 
# see this if you run the script a few times.  They should be 
# different the majority of the time.


use strict;
use warnings;
use 5.28.0;

my %hash = ('a' => 1, 'b' => 2, 'c' => 3, 'apple' => 7, 'dinobot' => "Dead"); 
my @k = keys %hash;
my @v = values %hash;
say @k;
say @v;
say "\nNow we will display them formatted with spaces between them.\n";
foreach my $keyfromK (@k) {print "$keyfromK ";}
print "\n";
foreach my $valuefromV (@v) {print "$valuefromV ";}
print "\n";

