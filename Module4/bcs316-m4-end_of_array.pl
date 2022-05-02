#RB-BCS316
#Adds an element to the end of an array
use 5.23.0;
my @rocks;
my $end;
my $number_of_rocks;

$rocks[0] = 'Wehrlite'; # One element...
$rocks[1] = 'Travertine'; # another...
$rocks[2] = 'Diatomite'; # and another...
$rocks[3] = 'The Rock'; # and another...
$rocks[4] = 'Rocky Balboa'; # now there are 5 elements


#These 5 lines are there for spacing during the output
say;
say;
say "x" x 50;
say;
say;

#Display the elements using the shortcuts built into perl
#Last = -1, Middle = -2, First = -3
say 'The last element is "$rocks[-1]" ' . $rocks[-1];
say 'The middle element is "$rocks[-2]" ' . $rocks[-2];
say 'The first element is "$rocks[-3]" ' . $rocks[-3];

say;
say;
say "x" x 50;
say;
say;

$end = $#rocks; # 99, which is the last element's index

say 'The last element of the array is number ' . $end;

$number_of_rocks = $end + 1; 

say 'This will add element number ' . $number_of_rocks;

$rocks[ $number_of_rocks ] = 'hard rock'; # the last rock

say 'The last element is now ' . $rocks[-1];

say;
say;
say "x" x 50;
say;
say;

say "We can also use a foreach loop to dump the entire array";

foreach my $rock (@rocks)

	{	chomp $rock;
		if ($rock ne "") {say $rock;} 	# We need the if statement 
						# because perl tries to print the value 
						# of elements that don't exist.

	}


say;
say;

