use 5.23.0;
use Data::Dumper;
open (FILEHANDLE,"vgsales.csv") or die "Can not open\n";
my %salesYear; #Hash that we will use to store the year and sales per year


while (my $line = <FILEHANDLE>) {
    chomp $line;
 my @str = split /,/, $line; { 	#Creates an array per line split on the comma.
				# The fields are:
				# 0 - Title
				# 1 - Unused
				# 2 - Platform
				# 3 - Genre
				# 4 - Publisher
				# 5 - Sales
				# 6 - Release date
	my $year = $str [6]; #Store the year for the line in $year
	my $sales = $str [5]; #Store the sales for the line in $sales
	my $totalSales = ($salesYear{$year} + $str[5]);  	#Create a temporary variable which stores the total sales
								# We then look up the current total for the year $salesYear{$year}
								#  will return the year as the key and the total sales so far as the value.
								# We then add the sales for the current line to the total for the year and
								#  store it in $totalSales

       if ($year =~ /\d{4}/) {$salesYear{"$year"} = $totalSales;} 	#Because the data file has some formatting issues, we check to see if
									# $year matches a 4 digit value.  If it does we set the key $year to the 
									# value $totalSales.  This updates each year's total sales.
    }
}


#The more difficult part is the sorting because Perl is a bit difficult when it comes to hash sorting.
# The easiest way is to join the key/value pairs, store them in an array and then sort the array.

my @arrayToSort; #Temporary array which will store the combined key/value pairs
foreach my $val (keys %salesYear) #Regular foreach loop.  Each $val will contain the keys from the hash %salesYear
		{my $temp4array = join ",",  $val, $salesYear{$val}; 	#The variable $temp4array will contain the joined values of the key/value pair 
		        						# by a comma
       		push @arrayToSort, $temp4array;	#Push $val onto an array 
	    	}

my $sortedYear; #stores the year we will use to sort
my $sortedData; #temp variable used during the loop
my $sortedSales; #stores the sales we will use to sort
my %sortedSalesTemp; #temporary hash used for the sort.

#starts off with a standard foreach loop 

foreach my $line (@arrayToSort) { 
    chomp $line;
    my ($sortedYear, $sortedSales) = split /,/, $line; #splits each line into 2 variables
    $sortedSalesTemp{$sortedYear} = $sortedSales; #creates a temp hash
}

foreach my $sortedData (sort {
                        $sortedSalesTemp{$a} <=> $sortedSalesTemp{$b} #performs the comparison
                       } keys %sortedSalesTemp) {
say "The sales for the year $sortedData were $sortedSalesTemp{$sortedData} million copies";
}

#You can swap $a with $b to reverse the sort order




