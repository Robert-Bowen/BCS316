#RB-BCS316
#This script shows an example of how to use the Term::Readkey module to "hide" input.  Term::Readkey has a number of useful functions.
use 5.23.0;
use Term::ReadKey;
print "Please enter a password\n";
print "The password will not display anything as you are typing it.\n";
ReadMode('noecho');
$password = ReadLine(0);
print "You entered $password\n";
