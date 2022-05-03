#RB-BCS316
#This script shows an example of a do/while function.
use 5.23.0;

my $count = 0;

do 	{print "count is now $count\n"; # Gives values 2 4 6 8 10}
	 $count += 2;
	}

while ($count < 10); 
	
