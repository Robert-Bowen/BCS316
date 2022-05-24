#RB-BCS316
#This script shows an example of subroutines.  The user is prompted for some numbers which are pushed onto an array.  Then the total number of elements
# in the array is determined and the sum of the element values is divided to get the average.

#Rather than the user being limited as in the last example, they can tell the script they are done by entering something other than a number.

#This uses the default array variable rather than the array name directly.
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
print "We will pass the 3 arguments 10, 30, and 60 to the function so we can average them.\n";

Average(10, 30, 60);

print "\n" . '$n held hold the number of arguments passed' . "\n";

print "\nThere were $n elements in " . '$n' . "\n";

print "\n" . '@_ is an array that is created with each argument as an element.  We loop through them to create $sum which is then divided by $n.' . "\n";
