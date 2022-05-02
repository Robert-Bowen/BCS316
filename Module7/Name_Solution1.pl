## Uses defined to check to see if $last_person is empty.  If it is
## it tells the first person they are the only one here.
## If it is defined, it looks at the value of $last_person
## which is set after the first subroutine runs

#!/usr/bin/perl
use 5.13.0;
sub greet {
state $last_person;
my $name = shift;
print "Hi $name! ";
if( defined $last_person ) {
print "$last_person are also here!\n"; }
else {
print "You are the first ones here!\n"; }
$last_person = $name; }


greet( 'Han, Leia and Chewbacca' ); 
greet( 'Darth Vader' );
