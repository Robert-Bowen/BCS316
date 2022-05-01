#RB-BCS316
#Example of Simple foreach loop.  Loops through 16 times (because it starts at zero.)

use 5.28.0; 	#Note the use of the "\n" in the print statement
			#since we aren't using say.
#Sets up a loop from 0 to 15
foreach my $i (0..15) {
print "$i\n"; #prints each value
}
