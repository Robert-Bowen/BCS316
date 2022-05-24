#RB-BCS316
#Opens a file and uses the split function on each line.  
use 5.23.0;
my @list;
my $file = "vgsales.csv";
open (my $csv, '<', $file) || die "cant open";
foreach (<$csv>) {
   chomp;
   my @fields = split(/\,/);
   push @list, $fields[1]; #$fields[1] is the 2nd column.
   say $fields[1];
}
