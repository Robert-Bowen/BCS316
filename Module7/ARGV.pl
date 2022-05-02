#!/usr/bin/perl

## Displays what arguments are passed to the perl script at the command line

use strict;
use warnings;
use 5.13.0;


use strict;
use warnings;
use Data::Dumper qw(Dumper);
 
print Dumper \@ARGV;
