use strict;
use warnings;
use 5.13.0;
my $n;
my $sum;
my $item;
my $average;

# Function definition
sub Average {
   # get total number of arguments passed.
   $n = scalar(@_);
   $sum = 0;

   foreach $item (@_) {
      $sum += $item;
   }
   $average = $sum / $n;

   print "Average for the given numbers : $average\n";
}

# Function call

print "Please enter 3 numbers, pressing return/enter after each \n";

my $num1 = <STDIN>;
my $num2 = <STDIN>;
my $num3 = <STDIN>;
chomp $num1;
chomp $num2;
chomp $num3;


Average($num1, $num2, $num3);

