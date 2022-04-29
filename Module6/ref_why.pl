@arr1 = (1, 2, 3);
@arr2 = (4, 5, 6);
check_size(@arr1, @arr2);

sub check_size {
 my (@a1, @a2) = @_;
 print @a1 == @a2 ? 'Yes' : 'No';
}

print "\n";
