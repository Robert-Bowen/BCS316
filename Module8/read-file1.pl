use 5.13.0;
my @data;
my $line;
my $count =0;

my $file_data = 'vgsales.csv' ;
open INFILE, "$file_data" ; 
@data = <INFILE> ; 
close INFILE ;


foreach $line (@data) {

	
say "This is line # $count - data is $line";
$count++;

if ($count == 20) {last;}

			}