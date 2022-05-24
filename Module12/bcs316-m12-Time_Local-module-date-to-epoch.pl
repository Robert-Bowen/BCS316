#RB-BCS316
#Fetches the epoch timestamp from the values provided.
use 5.23.0;
use Time::Local;
my $mday = 20;
my $mon = 1; #Feb is 2nd month of year
my $year = 77;
my $sec = 0;
my $min = 0;
my $hours = 0;
my $time = timelocal($sec, $min, $hours, $mday, $mon, $year);
say $time;
