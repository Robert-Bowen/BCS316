use List::MoreUtils qw(uniq);
 
my @words = qw(foo bar baz foo zorg baz);
my @unique_words = uniq @words;
foreach $words (@words) {print $words . " \n";}
print "\n\n\n";
foreach $words (@unique_words) {print $words . " \n";}

