#Uses WWW::Mechanize to download a webpage and save it.
#Since pages change on the Internet, you may need to use a different page instead of the URL below
use 5.18.0;
use strict;
use warnings;
use WWW::Mechanize;

my $mech = WWW::Mechanize->new();
$mech->get("https://technet.microsoft.com/en-us/library/hh135098(v=exchg.150).aspx");
$mech->save_content("result.html");
