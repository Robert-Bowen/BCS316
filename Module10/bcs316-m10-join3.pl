#RB-BCS316
#This combines split (we ask the user for comma separated data) and join together.
#User provides some values on one line and then a character to use as the "glue" 
#We use split to separate them into array elements
#Then we use join to bring them into one string separated by a colon
use 5.23.0;
say "Enter three values (words, numbers, mixed, etc.) on the same line separated by a comma";
say "Example Red,White,Blue";
my $input1 = <STDIN>;
chomp $input1;
my @values = split /,/, $input1; # Each element is one of the values.  They were split on the comma.
my $x = (join ":", @values); 
say "The input of $input1 was separated into: ";
foreach my $value (@values) {say "$value";}
say "Then they were joined by colons which resulted in: $x";





