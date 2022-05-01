#This "abuses" :-)the for loop by not telling perl
#when to stop, what to increment, etc.
#It's called infinite-loop-junk because it just prints junk characters to the screen.
use 5.28.0;
say "We are about to start an infinite loop";
say "Press enter to continue.  To end the loop press control+c or close the window";
my $promptTheUser = <STDIN>; # we don't use this, it's just to get the user to press enter.
for (;;) {
for (1 .. 15) {
printf "%08X", rand(0xffffffff);  #This generates 15 - 8 character random strings per line
}
}
