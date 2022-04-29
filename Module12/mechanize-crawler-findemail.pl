### Takes URLs found by crawler and parses them for emails

use Modern::Perl;
use WWW::Mechanize;
use 5.18.0;
use List::MoreUtils qw(uniq);
my $url; 
my $domain = "";
my $root; my $urlcrawl;
my $mech = WWW::Mechanize->new;


say "Please tell me the full URL (ex. http://www.somesite.com) of the website you want to crawl for email addresses";
say "https://www.farmingdaleschools.org/schools/farmingdale_high_school is a good one";
say "To use the above site just press enter";

$root = <STDIN>;
chomp $root;
if ($root eq "") {

$root = "https://www.farmingdaleschools.org/schools/farmingdale_high_school";

}
### Subroutine that takes URLs found by crawler and parses them for emails

else {$domain = $root;}


say $domain;
say $root;

sub getmails {
$urlcrawl = $_;
$mech->get( $urlcrawl );
my @links = $mech->links();
uniq (@links);
foreach my $link ( @links ) {
if ($link->url =~ /mailto/) {printf "%s, %s\n", $link->text, $link->url;}    }
}

sub visit {
    my $url = shift;
    my $indent = shift || 0;
    my $visited = shift || {};
    my $tab = ' ' x $indent;

    # Already seen that.
    return if $visited->{$url}++;

    # Leaves domain.
    if ($url !~ /^$domain/) {
    ## uncomment this line if you want to see external links to other sites    say $tab, "-> $url";
        return;
    }
    
    # Not seen yet.  Uncomment line below to see all URLs it finds.
    ###say $tab, "- $url ";
    $mech->get($url);


	getmails ($url);

    visit($_, $indent+2, $visited) for
        map {$_->url_abs} $mech->links;
}

visit($root);
