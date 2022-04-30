use 5.28.0;
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