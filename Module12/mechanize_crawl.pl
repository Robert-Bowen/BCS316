#This will get all of the content from the webpage defined in $URL and output it.
#It's useful both to show how to use WWW::Mechanize and to be able to download
#a site into a file
use 5.18.0;
use WWW::Mechanize;
my $URL = 'http://www.mozilla.org';
my $mech = WWW::Mechanize->new();
my $response = $mech->get($URL);
 if ($response->is_success) {
        print $mech->content;
 }
 else {
     die $response->status_line;
 }
