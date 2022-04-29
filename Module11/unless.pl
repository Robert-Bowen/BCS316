use 5.13.0;
use strict;
use warnings;
my @date = split(" ", localtime(time));
my $day = $date[0]; 
unless ($day =~ /Mon/) 
	{
	say "No class today";
	}
else 	{
	say "Today is Monday, there is class :(";
	}