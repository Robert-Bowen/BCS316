#RB-BCS316
#Shows the use of the given function
# Since given is experimental we use no warnings 'experimental' to suppress warnings
use 5.23.0;
no warnings 'experimental'; 
print 'Enter something: ';
chomp( my $input = <> );
 
    given ($input) {
	when (/\d/) {say "The input has numbers"; continue;}  
	when (/[a-zA-Z]/) {say "The input has letters";}  
   }

