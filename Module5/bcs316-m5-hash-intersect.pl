#RB-BCS316
#Gets the intersection of two arrays by using a hash.
use 5.23.0;
no warnings 'qw'; #Tell perl not to complain about input because
				#we are inputting it like this
				#on purpose.

# We start with 3 arrays - @produce (all produce items), @vegetables (the veggies), and @fruits (the fruits)

my @produce = qw(Apple Tomato Orange Pepper Banana Avocado Nectarine Potato Grape Onion);
my @vegetables = qw(Tomato Pepper Avocado Potato Onion);
my @fruits = qw(Apple Orange Banana Nectarine Grape);

# Set a temp hash and populate it the the contents of the produce array as the key and 1 as the value

my %temp=();

foreach (@produce)
{ $temp{$_}=1;}

#Compares the keys to the values in @vegetables

my @intersect=grep $temp{$_}, @vegetables;

#Loops through and prints out all the matches

foreach my $intersect1 (@intersect) {print $intersect1 . "\n";}

