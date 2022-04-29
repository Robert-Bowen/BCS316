
use 5.13.0;
use warnings;
use strict;
my $string;
$string = <STDIN>;
chomp $string;
if ($string =~ m/Robert/) {
say 'match';
}
else {say 'no match';}

