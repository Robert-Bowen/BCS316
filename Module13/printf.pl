use strict;
use warnings;
use 5.13.0;


my @items = qw( Dwight Jim Michael Andy Phyllis Angela Darryl Oscar Kevin Creed Pam );
my $format = "The items are:\n" . ("%10s\n" x @items); 
## print "the format is >>$format<<\n"; # for debugging 
printf $format, @items;
