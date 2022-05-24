#RB-BCS316
#This script shows an example of using a simple grep.  We will do more with regular expressions in Modules 9 and 10
use 5.23.0;

use Data::Dumper qw(Dumper); 
my @days=qw(Monday Tuesday Thursday Friday);
my @result=grep /Mon/, @days;
say Dumper \@result;
