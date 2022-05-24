#RB-BCS316
#This example shows how to open a file and use a regular expression to extract vertain data.
# Each time it finds a match it increases the $sum scalar.
use 5.23.0;
my $genre;
print "Enter the genre to search for\n";
$genre = <STDIN>;
chomp $genre;

my $file = 'vgsales.csv';
my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $! - Check that you extracted it to the correct directory\n";
while (my $line = <$data>) {
  chomp $line;
  my @fields = split "," , $line;
  if ($fields[4] =~ m/$genre/) 
  {print $line . "\n";
  $sum += $fields[10];
  }

}

print "$sum\n";
