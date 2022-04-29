use 5.26.0;
my @array = qw (Robert R0berta William Samantha Batman1 Superman R0be Rhinestone Reiauo);
my @grepArray =  grep (!/\d/, @array);
foreach my $element (@grepArray) {say $element;}
