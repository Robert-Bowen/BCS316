use 5.13.0;
use warnings;
use strict;

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
