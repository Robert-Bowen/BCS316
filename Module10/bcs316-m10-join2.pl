#RB-BCS316
#This example expands on how to use the join function.
use 5.23.0;
#User provides some values on one line and then a character to use as the "glue"
say "Enter three values (words, numbers, mixed, etc.) and press return after each one";
my $input1 = <STDIN>;
chomp $input1;
say "Value 2?";
my $input2 = <STDIN>;
chomp $input2;
say "Value 3?";
my $input3 = <STDIN>;
chomp $input3;
my $x = (join ":", $input1, $input2, $input3); 
say "$input1, $input2, $input3 joined by colons are: $x";

