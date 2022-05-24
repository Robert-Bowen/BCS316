use Term::Menus; #must run cpanm install Term::Menus (as local admin or root) first.
use 5.13.0;
my @list=('Menu Item #1','Menu Item #2','Menu Item #3');
my $banner="  Please Pick an Item:";
my $selection=&pick(\@list,$banner);
if ($selection eq "Menu Item #1") 
	{say "Menu Item #1's code would be executed here";}
if ($selection eq "Menu Item #2") 
	{say "Menu Item #2's code would be executed here";}
if ($selection eq "Menu Item #3") 
	{say "Menu Item #3's code would be executed here";}