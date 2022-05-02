#RB-BCS316
#Shows the use of the unless function
use 5.23.0;
use strict;
use warnings;
my @date = split(" ", localtime(time));
my $day = $date[0]; 
unless ($day =~ /Mon/) #If this is run on any day besides Monday you get a message there is no class
	{
	say "No class today";
	}
else 	{
	say "Today is Monday, there is class :(";
	}
