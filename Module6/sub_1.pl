use strict;
use warnings;
use 5.13.0;

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

