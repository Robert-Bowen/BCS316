#!/usr/bin/perl

use strict;
use warnings;
use 5.13.0;



use Term::ANSIScreen qw(cls);
cls();

my $phrase = "The quick brown fox jumped over the lazy dog.";
my @word = qw (quick fox lazy dog);
say "This will show the index of where the strings quick, fox, lazy, and dog appear in the text \"The quick brown fox jumped over the lazy dog.\"";
foreach my $word (@word) {
my $where = index ($phrase, $word);
say "The word " . $word . " was found at location " . $where . ".";
}
