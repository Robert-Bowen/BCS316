#RB-BCS316
#Example for how to change the capitalization for strings.
use 5.23.0;
say "Please enter a first and last name and we will change the capitalization.  Use an uppercase letter as the first character";
my $start = <STDIN>;
chomp $start;
say;
my $uncapp = lc( $start ); # all lowercase
say $uncapp;
my $uppered = uc( $uncapp ); # all uppercase
say $uppered;
my $lowered = lc( $uppered ); #all lowercase
say $lowered;
my $capped = ucfirst( $lowered ); # uppercase letter first then lower
say $capped;
