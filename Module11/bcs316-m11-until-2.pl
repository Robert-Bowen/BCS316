#RB-BCS316
#Shows the use of the until function
use 5.23.0;
my @keywords = qw (Santa Easter_Bunny Leprechaun Yoda );
my $counter = 0;
#The line until(!scalar @keywords) says loop through the array until it finds no more elements.
until(!scalar @keywords) {
  $counter++;
  print shift(@keywords) . "\n"; #Shift works like pop does but takes from the other end of the array.
}

