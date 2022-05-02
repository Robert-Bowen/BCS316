#RB-BCS316
#Shows the use of the last function
use 5.23.0;

say "This will echo what you type until you write the safe word (Batman)";

#As we've seen before while <STDIN> will keep accepting lines until we either break or in this case
# match a pattern which fires off the last function.

while (<STDIN>) {
 if (/Batman/) {last;}
else {print;}
}
say "I'm sorry this was boring you";
