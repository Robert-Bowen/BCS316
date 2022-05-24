#RB-BCS316
#Example of taking user input into a scalar.
# We predefine the 2 scalar variables and then populate them with input from the user.
use 5.28.0;#Allows us to use the say function
my $Fname; #Predefine the scalars $Fname and $Lname
my $Lname;

say "What is your first name?";
$Fname = <STDIN>; #Stores the input in $Fname
chomp $Fname; #Chomp removes the end of line character

say "What is your last name?";
$Lname = <STDIN>;
chomp $Lname;

say "Hello $Fname" . " " . $Lname . ".";
say "It's nice to meet you";
