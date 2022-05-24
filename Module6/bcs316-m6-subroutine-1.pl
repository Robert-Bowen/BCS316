#RB-BCS316
#This script shows an example of subroutines.  It creates 3 subroutines - Correct (if the user gets the answer correct)
					           		        # Incorrect (if the user gets the answer incorrect)
									# Get2Nums (generates 2 random numbers)
									
									#Then it asks the user what the sum is of the 2 numbers.
									#If the user is correct, the correct subroutine is run.
									#If the user is incorrect, the incorrect subroutine is run.
use 5.23.0;

my $num1;
my $num2;
my $guess;
my $correct = 0;
my $incorrect = 0;
my $counter = 1;
# Function definitions
sub Correct {
	print "---------------------------------------------------------------------------------------------\n";
   	print "Correct!\n";
	print "---------------------------------------------------------------------------------------------\n";
	print "\n";
	$correct++;
}

sub Incorrect {
	print "---------------------------------------------------------------------------------------------\n";
   	print "Incorrect!\n";
	print "---------------------------------------------------------------------------------------------\n";
	print "\n";
	$incorrect++;
}

sub Get2Nums {
	$num1 = int rand(9);
	$num2 = int rand(9);
}

# Function call

while ($counter < 6) {
print "Turn # $counter\n";
Get2Nums ();
print "What is the total of $num1 plus $num2 \n";
$guess = <STDIN>;
chomp $guess;
if ($guess == ($num1 + $num2)) {Correct();}
else {Incorrect();}
$counter++;
}

print "You got $correct correct and $incorrect wrong\n";

