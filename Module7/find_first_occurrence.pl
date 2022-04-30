use 5.13.0;
my $long = "some very very long string";
my $right = substr($long, index($long, "l") );
say $long;
say $right;
say "End";