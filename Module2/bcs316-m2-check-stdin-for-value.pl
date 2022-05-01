#RB-BCS316
#Example of taking input from the user (via STDIN) and then using the chomp function to remove the newline character
#Then the input is checked and if it matches "Robert" we output "Hello Robert".  
# or if it's not, we output "Hello not Robert"
use 5.28.0; #Allows us to use say
my $name;
say "What is your name?";
$name = <STDIN>;
chomp $name;
if ($name eq "Robert") {say "Hello Robert";}
	else {say "Hello not Robert";}
	
	
