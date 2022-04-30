my $line;
my $counter;
open(BIGFILE, "Robert-full.csv");
while (defined($line=<BIGFILE>))
	{
chomp $line;
#print $line . "\n";
$counter++;
	}
close BIGFILE;
print "There were $counter lines in the file\n";