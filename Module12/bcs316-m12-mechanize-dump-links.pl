#RB-BCS316
#This script shows an example of how to use WWW::Mechanize to dump all of the links it finds in the website stored in $url
use 5.23.0;

use WWW::Mechanize;
    my $mech = WWW::Mechanize->new();
    my $url = "http://www.suny.edu";
    $mech->get( $url ); #Grabs the website
    $mech->dump_links; #Shows the links.  dump_links contains functions to print each link on a separate line.  You don't need to write code to do it.
