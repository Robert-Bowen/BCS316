#RB-BCS316
#This script shows an example of how to read data from a file and match it.  This matches all of the lines with Robert, (so we don't grab Roberta or Roberto).
# feel free to substitute your own name and/or try other names.
use 5.23.0;
my $filename = "NY.txt";
my $birthTotal = 0;
  open( my $fh, '<', $filename ) or die "Can't open $filename: $!";
    while ( my $line = <$fh> ) {
        if ( $line =~ /Robert,/ ) {
            print $line;
            my $birthByyear = (split /,/, $line)[4];
	   $birthTotal = $birthTotal + $birthByyear;
	   print "The birth total is $birthTotal \n ";
        }
    }
    close $fh;
print "\n There were $birthTotal people named Robert born in NY.\n";

