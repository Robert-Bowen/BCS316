use Acme::Dice qw(roll_dice roll_craps);
 
# roll 3d10, honestly
my $total = roll_dice( dice => 3, sides => 10);
print "3 dice - 10 sides on each: $total\n";
 
# roll 6d6, and weight 4 more heavily, returning the individual dice
my @dice = roll_dice( dice => 6, sides => 6, favor => 4, bias => 40 );
print '6 dice 6 times and weigh 4 more heavily: '.join('-', @dice)."\n";
 
# shoot craps, with loaded dice
my $craps_roll = roll_craps( bias => 30 );
print "Craps roll: $craps_roll\n";
