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

