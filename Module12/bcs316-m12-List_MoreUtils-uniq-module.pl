#RB-BCS316
#This script shows an example of the use of the uniq function from List::MoreUtils
use 5.23.0;

use List::MoreUtils qw(uniq);
 
my @words = qw(foo bar baz foo zorg baz); #populate array with 6 elements (foo is there twice as is baz)
my @unique_words = uniq @words; #populate a new array with the unique words.
foreach $words (@words) {print $words . " \n";}
print "\n\n\n";
foreach $words (@unique_words) {print $words . " \n";}

