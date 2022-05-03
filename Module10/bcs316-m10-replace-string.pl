#RB-BCS316
#This script shows an example of how to substitute characters in a string.
use 5.23.0;

my $string;

say "What is your favorite city/pet name/place you wish to visit?";
$string = <STDIN>;
chomp $string;

$string =~ s/o|O/0/g; #if we find the letter O we replace it with the number 0
$string =~ s/a|A/@/g; #if we find the letter a we replace it with the character @
$string =~ s/e|E/3/g;
$string =~ s/i|I/1/g;
$string =~ s/i|u/^/g;
$string =~ s/i|b/8/g;
$string =~ s/i|n/~/g;
$string =~ s/s|r/ARRR/g;

say "A good password for you would be " . $string;



