#RB-BCS316
#This script shows an example of the spaceship sort which is required to properly sort numerical data.
use 5.23.0;
say ""; #just outputs a blank line for formatting
my @numb = qw(1 12 14 7 6 65 4 44 19 91 9 10);
say "Before Sort";
print "@numb\n";
say "After Sort";
@numb = sort (@numb);
print "@numb\n";
say "After Sort w/ Spaceship";
@numb = sort {$a <=> $b} (@numb);
print "@numb\n";
say "After Sort w/ Spaceship - reverse (switch a and b)";
@numb = sort {$b <=> $a} (@numb);
print "@numb\n";
