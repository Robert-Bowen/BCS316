#RB-BCS316
#This script shows an example of a long way of extracting and calculating values for a given date.
## Most of this can also be done more easily with Date::Calc
use 5.23.0;
use Time::Local;
say "What month were you born - Use 1 for January, 2 for February, etc.";
my $mon = <STDIN>;
chomp $mon;
say "What day of the month were you born?";
my $mday = <STDIN>;
chomp $mday;
say "What year were you born?";
my $year = <STDIN>;
chomp $year;
my $time = timelocal(0, 0, 0, $mday, $mon, $year);
my $currtime = timelocal(my $seconds, my $minutes, my $hours, (localtime)[3,4,5]);
say "\n";
say "Converted to Unixtime - $mon/$mday/$year is -- $time";
say "Born = " . $time;
say "Now = " . $currtime;
my $difference = $currtime - $time;
say "That was a difference of $difference seconds" ;
my $days = $difference / 86400;
say "That was $days days ago";
my $hours = $difference / 3600;
say "That was $hours hours ago";
my $years = $difference / 31557600;
my $weeks = $years * 52;
say "That was $weeks weeks ago";
say "That was $years years ago";
