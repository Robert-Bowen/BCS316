#RB-BCS316
#This script shows an example of how to split data via a regular expression.  It finds the value to the right and left of the decimal point (period.)
use 5.23.0;
my $lineNum = "1.35";
if ($lineNum =~ m/(\d+)\.(\d+)/ ) 
	{print "$1\n"; # 1 will print 
	 print "$2\n"; # 35 will print 
	}
	
my $lineChar = "Scooby.Doo";
if ($lineChar =~ m/(\w+)\.(\w+)/ )  #note that we have to escape the dot (period).
	{print "$1\n"; # Scooby will print 
	 print "$2\n"; # Doo will print 
	}
