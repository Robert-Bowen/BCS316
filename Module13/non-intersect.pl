use strict;
use warnings;
no warnings 'qw';
# We start with 3 arrays - @produce (all produce items), @vegetables (the veggies), and @fruits (the fruits)

my @produce = qw(Apple Tomato Orange Pepper Banana Avocado Nectarine Potato Grape Onion);
my @vegetables = qw(Tomato Pepper Avocado Potato Onion);
my @fruits = qw(Apple Orange Banana Nectarine Grape);

# Set a temp hash and populate it the the contents of the produce array as the key and 1 as the value

my %temp=();

foreach (@produce)
{ $temp{$_}=1;}

#Compares the keys to the values in @vegetables

my @intersect=grep (! $temp{$_}, @vegetables);

#Loops through and prints out all the matches

foreach my $non_intersect1 (@intersect) {print $non_intersect1 . "\n";}

