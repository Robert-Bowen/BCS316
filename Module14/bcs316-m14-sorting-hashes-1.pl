#RB-BCS316
#Sample modified from https://www.geeksforgeeks.org/sorting-hash-in-perl/
# Perl program to demonstrate sorting of the hash according 
# alphabetical order of its keys
use 5.23.0;
# Creating a hash of studentnames and their average score
my %studentnames = (
Linda => 14,
Teddy => 27,
Bob => 31,
Calvin => 16.5,
JimmyJr => 25.2,
Samantha => 29.5,
Tina => 19.6,
Louise => 30,
Gene => 39,
);
# sorting the hash according alphabetical order of its keys
say "\nSorting by name:\n\n";
foreach my $name (sort {lc $a cmp lc $b} keys %studentnames) 
    {printf "%-8s %s\n", $name, $studentnames{$name};}
# Sort the keys of the hash according to the values
# Here $a and $b are the placeholder variable of sort
say "\n\nSorting by Value:\n\n";
foreach my $name (sort {$studentnames{$a} <=> 
       $studentnames{$b}} keys %studentnames) 
    {printf "%-8s %s\n", $name, $studentnames{$name};}     
say "\n"