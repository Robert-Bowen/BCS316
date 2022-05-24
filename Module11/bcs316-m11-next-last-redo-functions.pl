#RB-BCS316
#Shows the use of the last, next and redo functions
# Based on what the user types a different function will be run.
use 5.23.0;
foreach (1..10) {
print "Iteration number $_.\n\n";
print "Please choose: last, next, redo, or none of the above? ";
chomp(my $choice = <STDIN>);
print "\n";
last if $choice =~ /last/i;
next if $choice =~ /next/i;
redo if $choice =~ /redo/i;
print "That wasn't any of the choices... onward!\n\n";
}
say "That's all, folks!";
