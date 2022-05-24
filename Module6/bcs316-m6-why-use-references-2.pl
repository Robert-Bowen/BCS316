#RB-BCS316
# Example code for why we need to use references when we are combining data from multiple hashes or arrays.
@arr1 = (1, 2, 3); #Creates an array with 3 elements
@arr2 = (4, 5, 6);
check_size(\@arr1, \@arr2); #Because we pass these as references and not send them directly, it works correctly.

sub check_size { 
 my ($a1, $a2) = @_;
 print @$a1 == @$a2 ? 'Yes' : 'No'; #This will evaluate to true if both arrays passed to the subroutine are the same size.
 print "\n";
 print @$a1 . "\n";
 print @$a2 . "\n";
 
print "This is printing a1 as a scalar \n";
print "The scalar will display the memory location of the array\n";

print $a1 . "\n";
print "This is printing a1 as an array \n";
print "This will print the number of elements in the array\n";
print @$a1 . "\n";
 
}
print "\n";


