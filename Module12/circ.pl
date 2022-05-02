#!/usr/bin/perl
use 5.13.0;
use strict;
use warnings;
my $radius;
say "What is the circumference of the circle? ";
my $circumference = <STDIN>;
if ($circumference lt 0) {$circumference = 0};
chomp $circumference;
$radius = ($circumference * 3.14152654) * 2;
say "The radius is $radius";

