use Term::Menus;
use 5.13.0;
use Switch;

sub menu_1 {say "This is menu item #1's code";}
sub menu_2 {say "This is menu item #2's code";}
sub menu_3 {say "This is menu item #3's code";}

my @list=('Menu Item #1','Menu Item #2','Menu Item #3');
my $banner="  Please Pick an Item:";
my $selection=&pick(\@list,$banner);



switch($selection) {
   case "Menu Item #1" { print "number 1 was selected\n"; menu_1();}
   case "Menu Item #2" { print "number 1 was selected\n"; menu_2();}
   case "Menu Item #3" { print "number 1 was selected\n"; menu_3();}
   else              { print "I'm not really needed since I'm never reached" }
}


