#This is a very rudimentary way to get a wordcount from a file of words

# You can test this with the file StarWars-4-6-Dialogue_only.txt
# And you can output the result to a file by using - perl count-words.pl StarWars-4-6-Dialogue_only.txt  > wordcount.out
# Or we could modify the script to write to a file

use 5.13.0;
use strict;
use warnings;
 
my %count;
my $file = shift or die "Usage: $0 FILE\n";
open my $fh, '<', $file or die "Could not open '$file' $!";
while (my $line = <$fh>) {
    chomp $line;
    $line =~ s/[^A-Za-z0-9 ]//g; # Replace all non-alphanumericals with nothing
    $line = lc($line); # We make all the words lowercase so they count correctly
    foreach my $str (split /\s+/, $line) {
        $count{$str}++;
    }
}
 
# We want to Sort the keys of the hash according to the values
# Code from https://perlmaven.com/how-to-sort-a-hash-in-perl
foreach my $word (sort { $count{$b} <=> $count{$a} } keys %count) {
    printf "%-8s %s\n", $word, $count{$word};
}
