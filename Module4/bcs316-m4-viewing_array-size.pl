#Shows a few ways of displaying the size of an array.
use 5.23.0;
use Data::Dumper;

my @cars = ("Tacoma","Firebird","Camaro","Corvette","RX-3","BMW 2002","Yellow Submarine");


#Outputting the array by using the array name will produce a list of all elements with no spaces between them
say "";

say "say \@cars";

say @cars;

say "";
say "Count of elements in array";
#To count the number of elements in the array, we can assign a scalar to the array and output the value of the scalar

my $carcount = @cars;

say $carcount;
	
say "";

#We can force perl to treat an array as a scalar and display the number of elements, but this is rarely used

say "Force list to be scalar which will show the number of elements in the array";
print scalar (@cars) . "\n";
say "";

say "Each element on a separate line with foreach";


#To display each element on a separate line or with any delimiter, we use a foreach array


foreach my $carlist (@cars)
		{ say $carlist;}

#We can also do 
#		foreach (@data_array) { 
#		print $_;
#	Which uses the default variable



# We can use Dumper from the Data::Dumper module to display the whole array for debugging purposes

say "";
say "Dumper output";

print Dumper(@cars);
