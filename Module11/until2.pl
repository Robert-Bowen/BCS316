#!/usr/bin/perl
use warnings;
use strict;
use 5.13.0;


my @keywords = qw (Santa Easter_Bunny Leprechaun Yoda );
my $counter = 0;


until(!scalar @keywords) {
  $counter++;
  print shift(@keywords) . "\n";
 
}
