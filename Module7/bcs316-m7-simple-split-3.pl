#RB-BCS316
#This script shows another example of a simple split in Perl.  Uses Data::Dumper to quickly display the contents of the array.
# This one separates on a colon rather than a space and then shows each element.  It doesn't use a loop which we do next.
 
my $mac = "4a:00:03:f5:97:c0"; #Mac is the Media Access Control address of a computer if you were curious.
my @words = split /:/, $mac;
say $words [0] . " Element 0";
say $words [1] . " Element 1";
say $words [2] . " Element 2";
say $words [3] . " Element 3";
say $words [4] . " Element 4";
say $words [5] . " Element 5";
