#RB-BCS316
#This script opens a file and displays the first 20 lines. 
use 5.23.0;

my @data;
my $line;
my $count =0; #holds the counter of lines

my $file_data = 'vgsales.csv' ;
open INFILE, "$file_data" ; 
@data = <INFILE> ; 
close INFILE ;


foreach $line (@data) {

	
say "This is line # $count - data is $line";
$count++;

if ($count == 20) {last;}

			}
