## Creates a new array and pushes each name onto it
## Then after the first time, it outputs the value of @names

use 5.13.0;
greet( 'Luke' ); 
greet( 'Yoda' ); 
greet( 'Ben' ); 
greet( 'Anakin' );
sub greet {
state @names;
my $name = shift;
print "Hi $name! ";
if( @names ) {
print "I've seen: @names\n"; }
else {
print "You are the first one here!\n"; }
push @names, $name; }
