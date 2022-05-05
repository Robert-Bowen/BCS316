#RB-BCS316
#This script shows how to view the arguments passed to the script on the command line.
# Try running it with some space separated arguments to see what is sent into the Perl script.
use 5.23.0;

use Data::Dumper qw(Dumper);
print "\n";
print Dumper \@ARGV; #Arguments passed are stored in the @ARGV array
                     # each argument is stored in an element.
                     # If we pass 3 arguments they will be stored in
                     # @ARGV[0], @ARGV[1] and @ARGV[2]
print "\n";





