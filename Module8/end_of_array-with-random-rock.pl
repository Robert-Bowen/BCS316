use 5.13.0;
use List::MoreUtils qw(uniq);

my @randomRock;
my @rocks;
my $end;
my $number_of_rocks;
open (my $data , '<', "rocks")|| die "The rocks are missing\n$!";
#Opens up the file and brings it into an array.  Uniq ensures there are no duplicates
my @array=uniq(<$data>);
#Get the size of the array
my $arraySize = scalar @array;
my @count = (1..5);
say "The 5 rocks are:";
for(@count)     {
                 my $randomIndex = int rand($arraySize);
                 my $rock = chomp ($array[$randomIndex]);
                 push (@rocks, $array[$randomIndex]);
                 say $array[$randomIndex];
}




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

