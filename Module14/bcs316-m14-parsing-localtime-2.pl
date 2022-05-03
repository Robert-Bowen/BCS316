#RB-BCS316
#This script shows an example of reading the time/day/date from the OS and parsing it.  This script gets more granular with what it outputs.
use 5.23.0;
my $now_string = localtime;  

say "Before isolating day of week and changing to long format";
say "";
say $now_string;
say "";

say "After isolating day of week and changing to long format";
say "";


my @date = split(" ", localtime(time));
my $day = $date[0]; 
my %days = ();
%days = ("Mon", "Monday", "Tue", "Tuesday", "Wed", "Wednesday", "Thur", "Thursday", "Fri", "Friday", "Sat", "Saturday", "Sun", "Sunday");
say "Today is $days{$day}\n";
