#!/usr/bin/perl
##
## We don't match because we are case sensitive ##
use strict;
use warnings;
use 5.13.0;
$_ = "Yo Gabba Gabba";
if (/\p{Space}/) {
print "There were spaces found !\n";
}
