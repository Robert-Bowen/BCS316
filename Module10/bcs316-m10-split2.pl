#RB-BCS316
#This script shows an example of using split.  It uses Data::Dumper to display the output.
use 5.23.0;
#This script uses the Data::Dumper module to quickly dump the contents of a variable (array in this case.)
#To see that process done via a loop, see the previous example.
use Data::Dumper qw(Dumper);
my $mac = "4a:00:03:f5:97:c0";
say "We started with $mac and split on each colon. \n This results in ";
my @words = split /:/, $mac;
print Dumper \@words;
