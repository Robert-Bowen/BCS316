#RB-BCS316
#This script shows how to view the arguments passed to the script on the command line.
# Try running it with some space separated arguments to see what is sent into the Perl script.
use 5.23.0;

use Data::Dumper qw(Dumper);
 
print Dumper \@ARGV;
