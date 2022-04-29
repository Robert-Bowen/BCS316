use 5.13.0;
use strict;
use warnings;

# Typing test
my @words = qw{ college exam grades steam epic r2d2 };
my $errors = 0;
foreach (@words) {
## redo comes here ##
print "Type the word '$_': ";
chomp(my $try = <STDIN>);
if ($try ne $_) {
print "Sorry - That's not right.\n\n";
$errors++;
redo; # jump back up to the top of the loop
}
}
print "You've completed the test, with $errors errors.\n";
