#RB-BCS316
#This script shows an example of how to read data from a file and match it.  
# This matches all of the lines with Robert, (so we don't grab Roberta or Roberto).
# feel free to substitute your own name and/or try other names.
use 5.23.0;
my $filename = "NY.txt";
my $birthTotal = 0;
#In this example we use a scalar for the filehandle name.  There is 
# no difference in using a scalar or a word.
  open( my $fh, '<', $filename ) or die "Can't open $filename: $!";
    while ( my $line = <$fh> ) {  #In this case the while will be used to read lines
                                  # until it sees the end of file (EOF) marker.
        if ( $line =~ /Robert,/ ) {
            print $line;  
            my $birthByyear = (split /,/, $line)[5];
	   $birthTotal = $birthTotal + $birthByyear;
	   print "The birth total is $birthTotal \n ";
        }
    }
    close $fh;
print "\n There were $birthTotal people named Robert born in NY.\n";





