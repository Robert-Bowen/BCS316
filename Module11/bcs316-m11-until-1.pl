#RB-BCS316
#Shows the use of the until function
use 5.23.0;

my $counter = 5;
 
until($counter == 0){
   print("$counter \n");
   $counter--;
}

#The variable $counter is decreased until it equals zero.
