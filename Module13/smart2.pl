#!/usr/bin/perl
use strict;
use warnings;
use 5.13.0;
no warnings 'experimental';

my @array1 = qw (Soap Water Shampoo);
my @array2 = qw (Soap Water Shampoo);
my @array3 = qw (Soap Water Lava);


say "The arrays 1 and 2 have the same elements!" if @array1 ~~ @array2;

#This will never print.

say "The arrays 3 and 4 have different elements!" if @array1 ~~ @array3;
