#!/usr/bin/perl

use strict;
use warnings;
use 5.13.0;
my %names = (
    "Fred",  "Rogers",
    "Big", "Bird",
    "Cookie",  "Monster",
);
my $flag = 0;
foreach my $key ( keys %names ) {
next unless $key =~ /Fred/; $flag = $key;
last;
}
print "I found a key matching 'Fred'. It was $flag\n" if $flag;
## The simpler way
say "I found a key using smartmatch matching 'Fred'" if %names ~~ /Fred/;
