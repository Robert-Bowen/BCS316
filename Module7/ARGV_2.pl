#!/usr/bin/perl
use strict;
use warnings;
use 5.13.0;

## Reads the file(s) entered at the command line
## Checks to see if an argument was passed and if not, it calls the function die and 
## displays a message

my $name = $ARGV[0];
if (not defined $name) {
  die "No filename specified\n";
}


while (<>) {
chomp;
print "The file contained  $_ \n"; }
