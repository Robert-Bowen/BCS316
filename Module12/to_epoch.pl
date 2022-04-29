use 5.13.0;
use Time::Local;
my $mday = 28;
my $mon = 1; #Feb is 2nd month of year
my $year = 73;
my $sec = 0;
my $min = 0;
my $hours = 0;
my $time = timelocal($sec, $min, $hours, $mday, $mon, $year);
say $time;
