#RB-BCS316
#This script shows an example of the spaceship sort which is required to properly sort numerical data.
# as you see it doesn't work on strings.
use 5.23.0;
say "";
my @numb = qw(X a 12 r 14 A 6 65 Z 44 F 91 9 10);
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
