#RB-BCS316
#This script shows an example of how to use the WWW::Wikipedia module to prompt the user for a string that will be used as the 
# search term on Wikipedia
use 5.23.0;
my $key;
use WWW::Wikipedia;
my $wiki = WWW::Wikipedia->new();
say "What would you like to search for?";
my $searchTerm = <STDIN>;
chomp $searchTerm;
sub Paginate    {say "\n\n\n";}

sub WaitForKey() {
    print "\nPress any key to continue...";
    chomp($key = <STDIN>);
                }
  ## search for Something 
  my $result = $wiki->search( "$searchTerm" );
say "-" x100 ;say "-" x100 ;say "-" x100 ;say "-" x100 ;
say "---------------------------------Text for search term-------------------------------------";
say "-" x100 ;say "-" x100 ;say "-" x100 ;say "-" x100 ;

  ## if the entry has some text print it out
  if ( $result->text() ) { 
      print $result->text();
  }
Paginate();
say "End of Output.  Ready to show Related Items";
WaitForKey();
say "-" x100 ;say "-" x100 ;say "-" x100 ;say "-" x100 ;
say "--------------------------------------Related Items---------------------------------------";
say "-" x100 ;say "-" x100 ;say "-" x100 ;say "-" x100 ;
  ## list any related items we can look up 
  print join( "\n", $result->related() );
