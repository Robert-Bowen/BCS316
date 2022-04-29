#!/usr/bin/perl
use 5.13.0;
use warnings;
use strict;
use Data::Dumper qw(Dumper);
 
my $mac = "4a:00:03:f5:97:c0";
my @words = split /:/, $mac;
print Dumper \@words;
