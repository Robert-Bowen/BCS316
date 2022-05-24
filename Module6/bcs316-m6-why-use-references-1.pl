#RB-BCS316
#This script shows an example of why we must use references when we are passing 2 or more hashes or arrays to a subroutine
use 5.23.0;

@arr1 = (1, 2, 3);
@arr2 = (4, 5, 6);
check_size(@arr1, @arr2); 

sub check_size {
 my (@a1, @a2) = @_;
 print @a1 == @a2 ? 'Yes' : 'No';  #This will evaluate to true if both arrays passed to the subroutine are the same size.
                                   # It fails to because everything was brought into @a1 and nothing was brought into @a2 since we didn't
                                   # use references.
}

print "\n";
