#RB-BCS316
#This script shows an example of how to use the printf function.
use 5.23.0;
my @items = qw( Dwight Jim Michael Andy Phyllis Angela Darryl Oscar Kevin Creed Pam );
my $format = "The items are:\n" . ("%10s\n" x @items); 
printf $format, @items;
