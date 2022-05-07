#RB-BCS316
#This script shows an example slices in Perl.
use 5.23.0;
my @array = ('Wonder Woman', 'Spiderman', 'Batman', 'Iron Man', 'Superman', 'Captain Marvel');
  
# Array for all the DC characters
my @DCCharacters = @array[0,2,4];
my @MarvelCharacters = @array[1,3,5];
  
foreach my $dc (@DCCharacters) 
    {say "$dc is a DC Comics Character";}

foreach my $marvel (@MarvelCharacters) 
    {say "$marvel is a Marvel Character";}







