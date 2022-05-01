#RB-BCS316
#Illustrates the difference between using print and say.
use 5.28.0; #Allows us to use the say function

#The print function does not put a newline character at the end of each line
# resulting in your data being squished together.
print "\n";
print "Below are the outputs from say and print\n"; #Note the use of the "\n" to get a new line.

print "Hello";
print "My name is Jack Sparrow.";
print "My ship in the movies is called the \"The Black Pearl.\""; #Note that we have to escape the quotation marks.

print "\n\nNow we will use say\n\n"; # We can use multiple "\n" to insert blank lines.  

say "Hello";
say "My name is Han Solo.";
say 'My (space)ship in the movies is called the "Millenium Falcon."'; #Here we used a single quote to avoid
									#having to escape the quotation marks.
say "\n\n\n"; # We can use "\n" with say to insert multiple blank lines
say "As you can see - the say function is much cleaner than print";
