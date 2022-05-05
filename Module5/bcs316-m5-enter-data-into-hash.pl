#RB-BCS316
use 5.23.0;
use Data::Dumper;
my %sWars;my %Simpsons; my %hours;
$sWars{'Darth Vader'} = 22;
$sWars{'Luke'} = 0;
$sWars{'Leia'} = 0;
$sWars{'Padme'} = 27;
%Simpsons = ('Homer', 45, 'Bart', 10, 'Maggie', 1);
%hours = ('Noon' => 12, 'Morning' => 8, 'Afternoon' => 13);
say "Before adding extra data";
say Dumper \%sWars;
say Dumper \%Simpsons;
say Dumper \%hours;

#Let's add some extra data
$sWars{'Yoda'} = 900;
$Simpsons{'Marge'} = 40;
$hours{'Evening'} = 19;

say "After adding extra data";
say Dumper \%sWars;
say Dumper \%Simpsons;
say Dumper \%hours;




