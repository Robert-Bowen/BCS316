#RB-BCS316
#This script shows another example of how to search a file for a value.
use 5.23.0;
my $line;
my $IN;
my $filename = 'NationalNames.csv';
open $IN, "<", $filename;
while ($line = <$IN>) {
chomp $line;
if ($line=~m/Robert,/){ 
#true if finds 'Robert' Comma added to not
# match Roberta
if ($line !~ m/,F,/)
{say $line;}
}
}
