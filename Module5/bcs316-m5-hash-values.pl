#RB-BCS316
#Creates a hash and displays it various ways.
use 5.23.0;
my %hash1=('Intel' => 'Pentium_Core', 'AMD' => 'Ryzen', 'Apple' => 'M1 Plus');
print "The value for the key AMD is " . $hash1{AMD}; 
print "\n";
print "The value for the key Apple is " . $hash1{Apple}; 
print "\n";
print "The value for the key Intel is " . $hash1{Intel};
print "\n We can output the keys too.\n\nThese are the keys for our hash (\%hash1) \n";
print keys(%hash1);
print "\n\n";

print "The values (not mushed together because we are using a loop) are\n";
for (keys %hash1) {
print "$hash1{$_}\n";}

#If you run this a few times you'll see that the last part differs
#for the first 2 parts we are telling perl which hash key to look 
#at.  For the last one we are looping through so they are being
#pulled from memory.

