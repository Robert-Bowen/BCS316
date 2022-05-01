#RB-BCS316
#Example of simple use of STDIN.  We take in a name, store it in $name, chomp it to remove the line feed (newline) and display it to the user.
use 5.28.0;

say "Enter your name";

my $name;

$name = <STDIN>;

chomp $name;
say "";
say "";
say "Hello " . $name;


say "Are you having a nice day " . $name . " ?";





