#Demonstrates the pop function by creating an array called @array and populating that with the numbers 5-9
# it then pops off the numbers and puts them into the 2 scalar variables ($bart and $homer.)
# Uses code from Learning Perl 7th 6th edition

#This script counts the number of elements in the array

use 5.28.0;
my $bart;
my $homer;
my $count;
my @array = 5..9;
$count = @array;
say "Array created with " . $count . " numbers";
say "Last number in array is " . $array[$#array];
$homer = pop(@array); # $homer gets 9, @array now has (5, 6, 7, 8) 
say "Pop #1";
say "homer is now set to " . $homer;
say "Last number in array is " . $array[$#array];
say "Pop #2";
$bart = pop @array; # $bart gets 8, @array now has (5, 6, 7)
say "bart is now set to " . $bart;
say "Last number in array is " . $array[$#array];
pop @array; # @array now has (5, 6). (The 7 is discarded.)
say "Pop #3";
say "Last number in array is " . $array[$#array];

