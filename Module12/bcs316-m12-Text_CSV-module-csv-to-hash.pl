#RB-BCS316
#This script shows an example of how to take a .csv file and covert it into hash data.
use 5.23.0;
use Data::Dumper;
use Text::CSV;
my $csv = Text::CSV->new ({binary=>1}) ;
$file = "cars.csv" ;
if(!open($fh, "<", $file )) {
  # Cannot call getline is a symptom of a bad open() 
  printf("### Error %s: could not open file %s\n", $ws, $file) ;
  close($fh) ;
  exit 1 ; 
}
while(my $row = $csv->getline($fh)) {
  @items = @{$row} ;
  for(my $i=0 ; $i<=$#items; $i++) {
    printf("Field %d: (%s)\n", $i, $items[$i] ) ;
  }
}
