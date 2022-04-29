#User provides some values on one line and then a character to use as the "glue" 
#We use split to separate them into array elements
#Then we use join to bring them into one string separated by a colon
use 5.13.0;
say "Enter three values (words, numbers, mixed, etc.) on the same line separated by a comma";
say "Example Red,White,Blue";
my $input1 = <STDIN>;
chomp $input1;
my @values = split /,/, $input1; # @values is (4, 6, 8, 10, 12)
my $x = (join ":", @values); 
say "$input1 was separated into: ";
foreach my $value (@values) {say "$value";}
say "Then they were joined by colons which resulted in: $x";

