#This uses Term::ANSIColor to change the text attributes
# This will not work in every terminal so if you only see normal output
# it is the terminal and not anything you did.

use Term::ANSIColor;
use Term::ANSIColor qw(:constants);

print color("red"), "Danger, Will Robinson!\n", color("reset");
print "This is just normal text.\n";
print colored("<BLINK>Do you hurt yet?</BLINK>", "blink");



print BLACK, ON_WHITE, "black on white\n";
print WHITE, ON_BLACK, "white on black\n";
print GREEN, ON_CYAN, BLINK, "garish!\n";
print RESET;
