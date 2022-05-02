#RB-BCS316
#Populates a hash with some items and their prices.

use strict;
use warnings;
use 5.23.0;
use Data::Dumper qw(Dumper);

my $prices;
my $key;
my %prices;

# create our hash
$prices{"pizza"} = 12.00;
$prices{"coke"} = 1.25;
$prices{"sandwich"} = 3.00;

say "";
say "";

say Dumper \%prices;




foreach $key (keys %prices)
{
  print "$key costs \$$prices{$key}\n";
}

