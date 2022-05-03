#RB-BCS316
#This script shows an example of how to use the WWW::Wikipedia module to search for a string that will be used as the 
# search term on Wikipedia
use 5.13.0;
use warnings;
use strict;
 use WWW::Wikipedia;
  my $wiki = WWW::Wikipedia->new();

  ## search for Something 
  my $result = $wiki->search( 'Farmingdale State College' );


say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "---------------------------------Text for search term-------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";



  ## if the entry has some text print it out
  if ( $result->text() ) { 
      print $result->text();
  }


say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "--------------------------------------Related Items---------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";
say "------------------------------------------------------------------------------------------";

  ## list any related items we can look up 
  print join( "\n", $result->related() );