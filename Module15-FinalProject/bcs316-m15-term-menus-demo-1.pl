use Term::Menus; #must run cpanm install Term::Menus (as local admin or root) first.
use 5.13.0;
my @list=('Menu Item #1','Menu Item #2','Menu Item #3');
my $banner="  Please Pick an Item:";
my $selection=&pick(\@list,$banner);
print "SELECTION = $selection\n";