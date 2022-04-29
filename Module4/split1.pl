use Data::Dumper qw(Dumper);
 
my $str = "ab cd ef gh ij";
my @words = split / /, $str;
print Dumper \@words;
