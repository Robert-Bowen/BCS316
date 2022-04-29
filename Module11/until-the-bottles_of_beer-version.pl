#Shows how to use Until loop as an alternative to while
use 5.13.0;
use strict;
use warnings;

my $bottles_of_beer = 100;

until ($bottles_of_beer == 0) {
say $bottles_of_beer . " bottles of beer on the wall, " . $bottles_of_beer . " bottles of beer, take one down, pass it around, " . $bottles_of_beer . " bottles of beer on the wall...";
$bottles_of_beer--;
}
say "This stupid song is finally over, this stupid song is over...hope I never hear it again, this stupid song is over";
