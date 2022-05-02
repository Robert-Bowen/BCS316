#!/usr/bin/perl
use 5.13.0;
use warnings;
use strict;

my $string;

say "What is your favorite city/pet name/place you wish to visit?";
$string = <STDIN>;
chomp $string;

$string =~ s/o|O/0/g;
$string =~ s/a|A/@/g;
$string =~ s/e|E/3/g;
$string =~ s/i|I/1/g;
$string =~ s/i|u/^/g;
$string =~ s/i|b/8/g;
$string =~ s/i|n/~/g;
$string =~ s/s|r/ARRR/g;

say "A good password for you would be " . $string;



