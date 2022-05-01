#This "abuses" :-)the for loop by not telling perl
#when to stop, what to increment, etc.
use 5.28.0;
say "We are about to start an infinite loop";
say "Press enter to continue.  To end the loop press control+c or close the window";
my $promptTheUser = <STDIN>; # we don't use this, it's just to get the user to press enter.
for (;;) {print "It's an infinite loop!\n";} # the for (;;) says until nothing happens check for nothing so it always evaluates to true.
