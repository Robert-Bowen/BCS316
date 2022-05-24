
use strict;
use warnings;
use 5.13.0;
#Brings in the Filename as an argument.  You can specify the name by changing $ARGV[0] to the filename

open (my $data , '<', $ARGV[0])|| die "could not open $ARGV[0]:\n$!";

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
say "Name $name[0] - Year $name[1] - Gender $name[2] - Count $name[3]";
}



