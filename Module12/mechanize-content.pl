#Uses WWW::Mechanize to dump all of the content it finds in the website stored in $url
#This is cleaner than using the code from mechanize-crawl.pl
use 5.18.0;
use WWW::Mechanize;
    my $mech = WWW::Mechanize->new();
    my $url = "http://www.farmingdale.edu";
    $mech->get( $url );
    print $mech->content;
