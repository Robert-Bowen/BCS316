#RB-BCS316
#This script opens a file and searches for all lines matching the input.  The input is a 2 character state name in this case.
use 5.23.0;
print "What state would you like to search?  Use the 2 letter code (example - CA - California, NY - New York, etc.)\n";
my $state = <STDIN>;
chomp $state;

print "What name would you like to search for?";
my $name = <STDIN>;
chomp $name;
print $name . "\n";

my $filename = "$state.txt";
my $birthTotal = 0;
  open( my $fh, '<', $filename ) or die "Can't open $filename: $!";
    while ( my $line = <$fh> ) {
        if ( $line =~ /,$name,/i ) { 
            print $line;
            my $birthByyear = (split /,/, $line)[4];
	   $birthTotal = $birthTotal + $birthByyear;
        }
    }
    close $fh;
print "\n There were $birthTotal people named $name born in $state.\n";

