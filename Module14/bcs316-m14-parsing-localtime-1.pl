#RB-BCS316
#This script shows an example of reading the time/day/date from the OS and parsing it.
use 5.23.0;
 my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) =
                                                localtime(time);

say "Year from perl " . $year;
$year +=1900;
say "Fixed Year - " . $year;
say "Month from perl " . $mon;
$mon +=1;
say "Corrected month " . $mon;
say "Day of the week " . $wday;
say "Day of the year " . $yday;
