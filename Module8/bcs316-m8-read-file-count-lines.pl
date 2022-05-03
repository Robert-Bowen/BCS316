#RB-BCS316
#This script shows an example of how to read a file and count all of the lines in it.

use 5.23.0;

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
