#RB-BCS316
#This script shows an example of subroutines.  The user is prompted for some numbers which are pushed onto an array.  Then the total number of elements
# in the array is determined and the sum of the element values is divided to get the average.

#Rather than the user being limited as in the last example, they can tell the script they are done by entering something other than a number.
use 5.23.0;
my $n;
my $sum;
my $item;
my $average;
my $theAverage;
my @numbers;
my $number;
# Function definition
sub Average {
   # get total number of arguments passed.
   $n = scalar(@numbers);
   $sum = 0;

   foreach $item (@numbers) {
      $sum += $item;
   }
   $average = $sum / $n;
$theAverage = $average;
return $theAverage;
}

sub PrintArray {
foreach $number (@numbers) {
print " $number, ";}
}

# Function call

print "Please enter numbers, pressing return/enter after each.  Enter any letter or just press enter when you are done \n";
while (1) {
my $input = <STDIN>;
chomp $input;
if ($input =~ /\d/) {push @numbers, $input;}
else {last};
}
Average(@numbers);
print "The average of";
PrintArray();
print "is : $theAverage\n";


