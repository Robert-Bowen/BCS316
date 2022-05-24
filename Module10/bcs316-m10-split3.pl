#RB-BCS316
#This example is the same as the previous one but shows each element of the array and what it contains
use 5.23.0;
 
my $mac = "4a:00:03:f5:97:c0";
say "The original string was $mac.  It was split at each colon.  \nThe elements of the array that were created are:";
my @words = split /:/, $mac;
say $words [0] . " Stored in Element 0";
say @words [1] . " Stored in Element 1";
say @words [2] . " Stored in Element 2";
say @words [3] . " Stored in Element 3";
say @words [4] . " Stored in Element 4";
say @words [5] . " Stored in Element 5";
