#RB-BCS316
#This script shows an example of local variables in a subroutine.
use 5.23.0;

# Global variable
$string = "Hello, World!";

sub PrintHello {
print "\n\nWe are inside PrintHello which uses a local version of ". '$string' . "\n\n";

   # Private variable for PrintHello function
   local $string;
   $string = "Hello, Perl!";
   PrintMe();
   print "Inside the function PrintHello $string\n";
}
sub PrintMe {
   print "Inside the function PrintMe $string\n";
}

sub ExtraLines{
print "\n\n\n\n\n";
}

# Function call
ExtraLines();

print "\$string starts out as Hello, World!\n";
print "When we localize it we change the value but only within the subroutine\n";
print "Within the subroutine \$string becomes \"Hello, Perl!\"\n";

PrintHello();

print "\nWhen we print the \$string outside the function it returns to the original value\n";

print "Outside the function $string\n";

ExtraLines();
