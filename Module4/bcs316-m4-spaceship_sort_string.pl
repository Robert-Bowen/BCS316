#RB-BCS316
#Shows the spaceship sorting method.  We will go into further detail in a later module.
# It is important to note that the spaceship sort only works on numbers.  This has letters in it to display this.
use 5.23.0;
say "";
my @numb = qw(X a 12 r 14 A 6 65 Z 44 F 91 9 10);
say "Before Sort";
print "@numb\n";
say "After Sort"; #Note this will be out of order since Perl does an ascii based sort.
@numb = sort (@numb);
print "@numb\n";
say "After Sort w/ Spaceship";
@numb = sort {$a <=> $b} (@numb);
print "@numb\n";
say "After Sort w/ Spaceship - reverse (switch a and b)";
@numb = sort {$b <=> $a} (@numb);
print "@numb\n";
