#Uses WWW::Mechanize to dump all of the links it finds in the website stored in $url
use 5.18.0;
use WWW::Mechanize;
    my $mech = WWW::Mechanize->new();
    my $url = "http://www.suny.edu";
    $mech->get( $url );
    $mech->dump_links;
