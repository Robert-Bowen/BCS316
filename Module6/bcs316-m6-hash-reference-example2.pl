#RB-BCS316
#Creates some hashes, each with car manufacturer, model and color.  Then passes them into an array via references.

use 5.23.0;

my %car1 = (		manufacturer => 'BMW',
 			model => '2002',
 			color => 'Orange');

my %car2 = (		manufacturer => 'Pontiac',
 			model => 'Firebird',
 			color => 'Gold');

my %car3 = (		manufacturer => 'Toyota',
 			model => 'Tacoma',
 			color => 'Yellow');

my %car4 = (		manufacturer => 'Mazda',
 			model => 'RX-3',
 			color => 'Purple');


my @cars = (\%car1, \%car2, \%car3, \%car4);


say "The cars on my desk are";
print "\n\n";



foreach (@cars) {
 print "$_->{manufacturer} $_->{model} in the beautiful color of $_->{color}\n";
}
