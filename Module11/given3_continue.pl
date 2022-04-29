use v5.12;
use strict;
use warnings;
no warnings 'experimental'; 
print 'Enter something: ';
chomp( my $input = <> );
 
    given ($input) {
	when (/\d/) {say "The input has numbers"; continue;}  
	when (/[a-zA-Z]/) {say "The input has letters";}  
   }

