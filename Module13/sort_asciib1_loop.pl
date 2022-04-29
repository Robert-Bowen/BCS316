#!/usr/bin/perl
use 5.13.0;
use strict;
use warnings;

my @bunchOfLetters = qw (Z X C v b n m L W E a A B C Apple);

foreach my $letter (@bunchOfLetters) {
  say $letter;
}

#my @sortedLetters = sort (@bunchOfLetters);
#foreach my $letter (@sortedLetters) {say $letter;}


#my @sortedLettersCorr = sort { lc($a) cmp lc($b) } @bunchOfLetters;
#foreach my $letter (@sortedLettersCorr) {say $letter;}
