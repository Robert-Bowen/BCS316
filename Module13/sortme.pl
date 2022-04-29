#We use the statement - no warnings 'numeric'; because the file has a defective EOF marker or 
#Excel set something it shouldn't have.
#While it would be cleaner to "fix" the file, I'm putting this here to show you how to deal with the
#error if you see it and don't want to spend the time fixing the source file
#either because you don't have the permission to fix it, or because it's a one-off and isn't 
#worth spending the time on.

#The error was - Argument "Count\n" isn't numeric in numeric comparison (<=>) at /mnt/f/Perl/sortme.pl line 23, <$data> line 1825434.
#The input file only had 1825433 lines which causes this.

use strict;
use warnings;
use 5.13.0;
no warnings 'numeric';


#Brings in the Filename as an argument.  You can specify the name by changing $ARGV[0] to the filename

#We can use the statement on the next line to show how to count the number of arguments passed
my $argCount = @ARGV;
# Then use the line below to show them.
#print "Number of command line arguments is $argCount\n";

if ($argCount eq '0') {$ARGV[0] = "NationalNames.csv";} #If we don't specify a filename, it uses NationalNames.csv

open (my $data , '<', $ARGV[0])|| die "could not open $ARGV[0]:\n$!"; 	#The die statement seems unnecessary but if a user
									#types in a filename, we need it.

#Opens up the file and brings it into an array

my @array=(<$data>);
	
#Sorts the array by whichever field you select -- I used NationalNames.csv which has 5 fields

my @sorted=reverse sort {(split(/,/,$a))[4]<=>(split(/,/,$b))[4]} @array;

say "The top 5 names were ---";
say "";

#Loops through the array and returns the first 5 values

for ( my $count = 0; $count < 5; $count++) {
my $nameToSplit = $sorted[$count];
my @name = split /,/, $nameToSplit;
say "Name $name[1] - Year $name[2] - Gender $name[3] - Count $name[4]";
}




