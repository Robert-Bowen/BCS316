my @list;
use 5.28.0;
my $file = "vgsales.csv";
open (my $csv, '<', $file) || die "cant open";
foreach (<$csv>) {
   chomp;
   my @fields = split(/\,/);
   push @list, $fields[1];
   say $fields[1];
}