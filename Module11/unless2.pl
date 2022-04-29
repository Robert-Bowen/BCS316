use 5.13.0;
use strict;
use warnings;
say "Are you curious? (answer NO if you aren't) ";
my $curious = <STDIN>;
my $I_am_curious = 0;
($I_am_curious = 1) unless ($curious =~ /NO/);
say "Curiosity killed the cat" if $I_am_curious;

## If this wasn't an example on expression modifiers, we could have eliminated the last line and wrote
## say "Curiosity killed the cat" unless ($curious =~ /NO/);
## or further modified the regex to match upper, lower, etc.