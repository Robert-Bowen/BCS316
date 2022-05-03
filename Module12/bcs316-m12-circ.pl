#RB-BCS316
#This script shows an example of how to determine the circumference of a circle.  bcs316-m12-circ-Math_Trig-module.pl shows how to do it using true pi.
use 5.23.0;
my $radius;
say "What is the circumference of the circle? ";
my $circumference = <STDIN>;
if ($circumference lt 0) {$circumference = 0};
chomp $circumference;
$radius = ($circumference * 3.14152654) * 2;
say "The radius is $radius";

