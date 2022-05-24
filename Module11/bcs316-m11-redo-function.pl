#RB-BCS316
#Shows the use of the redo function by prompting the user for input and if they don't match
# what's displayed on the screen it calls the redo function.
use 5.23.0;
# Typing test
my @words = qw{ college exam grades steam epic r2d2 };
my $errors = 0;
foreach (@words) {
## redo comes here ##
print "Type the word '$_': ";
chomp(my $try = <STDIN>);
if ($try ne $_)     {
print "Sorry - That's not right.  We will use the redo function to give you another chance.\n\n";
$errors++;
redo; # jump back up to the top of the loop
                    }
                }
print "You've completed the test, with $errors errors.\n";

