#RB-BCS316
#Creates an array with 4 superheroes and then selects a random number.  The random number is then used
# as the array index to display one of the superheroes.
use 5.23.0;
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

