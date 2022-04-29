use 5.13.0;
use strict;
use warnings;

say "This will echo what you type until you write the safe word (Batman)";

while (<STDIN>) {
 if (/Batman/) {last;}
else {print;}
}
say "I'm sorry this was boring you";