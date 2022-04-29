use Time::HiRes qw(gettimeofday);
use 5.13.0;
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
