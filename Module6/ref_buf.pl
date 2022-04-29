my %buffy = (forename => 'Buffy',
 surname => 'Summers',
 gender => 'female');
my %willow = (forename => 'Willow',
 surname => 'Rosenberg',
 gender => 'female');
my %xander = (forename => 'Xander',
 surname => 'Harris',
 gender => 'male');

my @people = (\%buffy, \%xander, \%willow);






foreach (@people) {
 print "$_->{forename} $_->{surname} is $_->{gender}\n";
}
