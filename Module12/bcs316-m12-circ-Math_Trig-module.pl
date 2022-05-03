#RB-BCS316
#This script shows an example of how to determine the circumference of a circle using a true version of pi (more accurate version.)
use 5.23.0;
use Math::Trig;
my $radius;
my $pi = pi();
say "What is the circumference of the circle? ";
my $circumference = <STDIN>;
if ($circumference lt 0) {$circumference = 0};
chomp $circumference;
$radius = ($circumference * $pi) * 2;
say "The radius is $radius";


