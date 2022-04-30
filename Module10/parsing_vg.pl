use strict;
use warnings;
my $genre;
print "Enter the genre to search for\n";
$genre = <STDIN>;
chomp $genre;

my $file = 'vgsales.csv';
my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $!\n";
while (my $line = <$data>) {
  chomp $line;
  my @fields = split "," , $line;
  if ($fields[4] =~ m/$genre/) 
  {print $line . "\n";
  $sum += $fields[10];
  }

}

print "$sum\n";