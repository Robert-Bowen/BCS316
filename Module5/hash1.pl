#!/usr/bin/perl

## These will be out of order because of how perl stores them 
## to be as efficient as possible


use strict;
use warnings;
use 5.13.0;

my %hash = ('a' => 1, 'b' => 2, 'c' => 3, 'apple' => 7, 'dinobot' => "Dead"); 
my @k = keys %hash;
my @v = values %hash;
say @k;
say @v;
