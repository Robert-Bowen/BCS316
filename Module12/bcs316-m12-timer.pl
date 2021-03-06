#RB-BCS316
#This script shows an example of how to create a timer to show how long code takes to execute.
use 5.23.0;

use Time::HiRes qw(gettimeofday);
my $counter = 0;
say "Enter a number to count to: ";
my $countto = <STDIN>;
chomp $countto;
say "Counting to $countto";

my $t0 = gettimeofday;
say "The time at the beginning is \t $t0";


while ($counter < $countto)  {$counter ++;}



my $t1 = gettimeofday;
say "The time at the end is \t\t $t1";

my $elapsed = $t1-$t0;
# $elapsed is a floating point value, representing number
# of seconds between $t0 and $t1
say "It took $elapsed seconds to count from 0 to $countto";
