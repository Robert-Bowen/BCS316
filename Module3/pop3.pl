#Demonstrates the pop function by creating an array called @array and populating that with the numbers 5-9
# it then pops off the numbers and puts them into the 2 scalar variables ($bart and $homer.)
# Uses code from Learning Perl 7th 6th edition

#Similar to pop.pl and pop2.pl but this shows how to loop through the array to show the current values.

use 5.13.0;
my $marge;
my $lisa;
my $count;
my @array = 5..9;
my $i;
$count = @array;
say "Array created with " . $count . " numbers";

for ($i=0;$i<5;$i++) 
{say "@array[$i]";
}

say "Last number in array is " . $array[$#array];
$lisa = pop(@array); # $lisa gets 9, @array now has (5, 6, 7, 8) 
say "Pop #1";
say "Lisa is now set to " . $lisa;
say "Last number in array is " . $array[$#array];
say "Pop #2";
$marge = pop @array; # $marge gets 8, @array now has (5, 6, 7)
say "Marge is now set to " . $marge;
say "Last number in array is " . $array[$#array];
pop @array; # @array now has (5, 6). (The 7 is discarded.)
say "Pop #3";
say "Last number in array is " . $array[$#array];

