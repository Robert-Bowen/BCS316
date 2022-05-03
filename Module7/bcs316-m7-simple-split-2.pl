#RB-BCS316
#This script shows another example of a simple split in Perl.  Uses Data::Dumper to quickly display the contents of the array.
# This one separates on a colon rather than a space.
use Data::Dumper qw(Dumper);
 
my $mac = "4a:00:03:f5:97:c0";
my @words = split /:/, $mac;
print Dumper \@words;
