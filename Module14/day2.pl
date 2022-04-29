use 5.13.0;
use strict;
use warnings;

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