use warnings;
use strict;
use 5.13.0;
my @superhero;
my $select;
$superhero [0] = "Batman";
$superhero [1] = "Superman";
$superhero [2] = "Aquaman";
$superhero [3] = "Wonder-Woman";
$select = rand (4);
$select = int ($select);
say "Your Superhero is " . $superhero[$select];
## We also could have done	 my @superhero = ("Batman","Superman","Aquaman","Wonder-Woman");
##                             OR
##				my @superhero = qw (Batman Superman Aquaman Wonder-Woman);

