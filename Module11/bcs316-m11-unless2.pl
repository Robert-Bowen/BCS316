#RB-BCS316
#Shows the use of the unless function using an expression modifier
use 5.23.0;
say "Are you curious? (answer NO if you aren't) ";
my $curious = <STDIN>;
my $I_am_curious = 0;
($I_am_curious = 1) unless ($curious =~ /NO/);
say "Curiosity killed the cat" if $I_am_curious;

## If this wasn't an example on expression modifiers, we could have eliminated the last line and wrote
## say "Curiosity killed the cat" unless ($curious =~ /NO/);
## or further modified the regex to match upper, lower, etc.



