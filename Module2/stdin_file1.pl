#!/usr/bin/perl
use strict;
use warnings;
use 5.13.0;
my $line;
while (defined($line = <>)) { chomp($line);
print "It was $line that I saw!\n"; }

