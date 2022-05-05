#RB-BCS316
#This script shows another example of using a simple grep.  
# We will do more with regular expressions in Modules 9 and 10
use 5.23.0;
use Data::Dumper qw(Dumper); 
my @days=qw(Muno Plex Toodee Brobee Foofa );
my @result=grep /oo/, @days;
say Dumper \@result;


