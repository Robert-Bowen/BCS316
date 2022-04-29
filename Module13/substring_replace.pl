#!/usr/bin/perl

use strict;
use warnings;
use 5.13.0;
use Term::ANSIScreen qw(cls);
cls();


sub fixscreen {my $counter = 0; while ($counter < 5) {say "";$counter ++;}}
fixscreen;

say "Replaces the word quick with the word naughty.  We are still manually counting the characters to get the location";
fixscreen;
my $phrase = "the quick brown fox jumps over the lazy dog.  why is that darn dog so utterly lazy?";
say "Original phrase = " . $phrase;

my $action = substr ($phrase, 4, 5) = "naughty";
#need to give the length of the word you are replacing the original word with or it stops outputting.

say "";
say "The new phrase = " . $phrase;
fixscreen;
