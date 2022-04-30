use strict;
use 5.28.0;
print "What state would you like to search?  Use the 2 letter code (example - CA - California, NY - New York, etc.)\n";
my $state = <STDIN>;
chomp $state;

print "What name would you like to search for?";
my $name = <STDIN>;
chomp $name;
print $name . "\n";
my $lowYear = 1;
my $lowYearCount = 99999;
my $highYear = 1;
my $highYearCount = 1;
my $birthByYear;
my $filename = "$state.txt";
my $birthTotal = 0;
  open( my $fh, '<', $filename ) or die "Can't open $filename: $!";
    while ( my $line = <$fh> ) {
        if ( $line =~ /,$name,/i ) {
            print $line;
            my $birthByYear = (split /,/, $line)[4];
            my $year = (split /,/, $line)[2];
       
	   $birthTotal = $birthTotal + $birthByYear; 
 
           if ($birthByYear > $highYearCount) {
						$highYear = $year;
						$highYearCount = $birthByYear;
					   }

           if ($birthByYear < $lowYearCount) {
						$lowYear = $year;
						$lowYearCount = $birthByYear;
					   }
        }
    }
    close $fh;
say  "\n There were $birthTotal people named $name born in $state.\n";
say  "\n The highest count was $highYearCount in $highYear\n";
say  "\n The lowest count was $lowYearCount in $lowYear\n";
