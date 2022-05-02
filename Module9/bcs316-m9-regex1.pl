#RB-BCS316
# Takes input from the user and checks to see if it matches the name Robert
# Since the /i isn't used, it is case sensitive.
use 5.23.0;
use warnings;
use strict;
say "Please enter a name.";
my $string;
$string = <STDIN>;
chomp $string;
if ($string =~ m/Robert/) {
say 'match';
}
else {say 'no match';}

