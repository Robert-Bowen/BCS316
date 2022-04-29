use 5.13.0;
use List::MoreUtils qw(uniq);
my @randomRock;
open (my $data , '<', "rocks")|| die "The rocks are missing\n$!";
#Opens up the file and brings it into an array.  Uniq ensures there are no duplicates
my @array=uniq(<$data>);
#Get the size of the array
my $arraySize = scalar @array;

my @count = (1..6);
for(@count)	{
		 my $randomIndex = int rand($arraySize);
		 my $rock = chomp ($array[$randomIndex]);
		 push (@randomRock, $array[$randomIndex]);
		 say $array[$randomIndex];
}
