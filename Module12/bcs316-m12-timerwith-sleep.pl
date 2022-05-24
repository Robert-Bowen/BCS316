#RB-BCS316
#This script shows an example of how to create a timer to show how long code takes to execute.  It takes input from the user and then sleeps for that 
# period of time to see how much skew there is between the timer and the sleep function.
use 5.23.0;
use Time::HiRes qw(gettimeofday);
my $counter = 0;
say "Enter how long you want to sleep ";
my $sleepUntil = <STDIN>;
chomp $sleepUntil;
say "Sleeping for $sleepUntil seconds.";

my $t0 = gettimeofday;
say "The time at the beginning is \t $t0";


sleep ($sleepUntil);


my $t1 = gettimeofday;
say "The time at the end is \t\t $t1";

my $elapsed = $t1-$t0;
# $elapsed is a floating point value, representing number
# of seconds between $t0 and $t1
say "We used a timer to determine that we slept for $elapsed seconds when you asked to sleep for $sleepUntil seconds";
