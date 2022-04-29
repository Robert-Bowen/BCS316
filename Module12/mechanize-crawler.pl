#Another way to use mechanize to grab links
use Modern::Perl;
use WWW::Mechanize;

my $root = 'http://www.farmingdale.edu/';
my $domain = 'http://www.farmingdale.edu';
my $mech = WWW::Mechanize->new;

sub visit {
    my $url = shift;
    my $indent = shift || 0;
    my $visited = shift || {};
    my $tab = ' ' x $indent;

    # Already seen that.
    return if $visited->{$url}++;

    # Leaves domain.
    if ($url !~ /^$domain/) {
        say $tab, "-> $url";
        return;
    }
    
    # Not seen yet.
    say $tab, "- $url ";
    $mech->get($url);
    visit($_, $indent+2, $visited) for
        map {$_->url_abs} $mech->links;
}

visit($root);
