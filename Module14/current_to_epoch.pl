use 5.13.0;
# $hours, $minutes, and $seconds represent a time today,
# in the current time zone
use Time::Local;
my $time = timelocal(my $seconds, my $minutes, my $hours, (localtime)[3,4,5]);
say $time;
