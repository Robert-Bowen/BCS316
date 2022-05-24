#RB-BCS316
#Performs pattern matching on the array looking for lines with no digit.
use 5.23.0;
my @array = qw (Robert R0berta William Samantha Batman1 Superman R0be Rhinestone Reiauo);
foreach my $element (@array) 
    {
     if ($element !~ /(?!PATTERN)[0-9]/) {say $element;}
    }
say "\nThe full array contained";   #below loops through the array so you see all elements
                                    # including elements with a digit in them.
say "";
foreach my $ele (@array) {say $ele;}


