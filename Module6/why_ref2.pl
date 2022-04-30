@arr1 = (1, 2, 3);
@arr2 = (4, 5, 6);
check_size(\@arr1, \@arr2);

sub check_size {
 my ($a1, $a2) = @_;
 print @$a1 == @$a2 ? 'Yes' : 'No';
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


