#RB-BCS316
#This script shows the differences between using the q, qw, qq, and qx functions.
my @states;
my $today;
use 5.23.0;
print qq/Hello Lisa\n/;           				# same as: print "Hello\n"; - Adds the whole string
print q/My name is Grampa Simpson and I am 83.5 years old/ . "\n";
							        #  same as: print 'My name is Grampa Simpson
								#  and I am 83.5 years old', "\n"
@states=qw( W O R D S );       					# same as ("W", "O", "R","D", "S")
$today = qx(date);           					# same as $today = 'date'; 
								#  This executed the system function "date."  
								#  We will cover this in more detail in Module 14

foreach (@states) {say $_;}
print $today;

