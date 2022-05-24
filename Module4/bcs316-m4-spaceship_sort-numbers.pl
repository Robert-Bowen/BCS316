#RB-BCS316
#Shows the spaceship sorting method.  We will go into further detail in a later module.
# It is important to note that the spaceship sort only works on numbers.  
use 5.23.0;
say "";
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
