#RB-BCS316
#This script shows an example of substituting an entire word in a string.
use 5.23.0;
#Create original string
my $originalString = "Yahoo is the most popular search engine on the Internet";
#Copy the original string to the $newString variable
my $newString = $originalString;
#Perform the substitution of the word Yahoo for the word Google
$newString =~ s/Yahoo/Google/; 
print "The original string was - $originalString \n";
print "The new string is - $newString \n";

# You can also do it this way and save yourself from having to copy the variable.
#(my $newOptional = $originalString) =~ s/Yahoo/Google/;
#print "The other way of doing the substitution resulted in the string $newOptional\n";



