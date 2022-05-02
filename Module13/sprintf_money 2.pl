#!/usr/bin/perl

use strict;
use warnings;
use 5.13.0;
sub fixscreen {my $counter = 0; while ($counter < 5) {say "";$counter ++;}}
use Term::ANSIScreen qw(cls);
cls();

## Uses sprintf to format some dollar values correctly;
my @money = ("82.8881", "41.9992", "42.0013", "108.0514", "82.487", "85.491", "86.495");
foreach my $moneyf (@money) {
my $money = sprintf "%.2f", $moneyf;
print "\t \t $moneyf formats to \$$money\n\n";
}
fixscreen
