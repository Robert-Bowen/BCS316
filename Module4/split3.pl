#!/usr/bin/perl
use 5.13.0;
use warnings;
use strict;
 
my $mac = "4a:00:03:f5:97:c0";
my @words = split /:/, $mac;
say $words [0] . " Element 0";
say $words [1] . " Element 1";
say $words [2] . " Element 2";
say $words [3] . " Element 3";
say $words [4] . " Element 4";
say $words [5] . " Element 5";
#say $words[0]. $words[1] . $words[2];
