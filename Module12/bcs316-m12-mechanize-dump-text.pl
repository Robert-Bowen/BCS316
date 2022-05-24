#RB-BCS316
#This script shows an example of how to use WWW::Mechanize to dump all of the text of URLs it finds in the website stored in $url
use 5.23.0;
use WWW::Mechanize;
    my $mech = WWW::Mechanize->new();
    my $url = "http://www.suny.edu";
    $mech->get( $url );
    $mech->dump_text; #Shows the text.  dump_links contains functions to print the text.  You don't need to write code to do it.
