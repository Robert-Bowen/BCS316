#!/usr/bin/perl

use strict;
use warnings;
use 5.13.0;
sub fixscreen {
my $counter = 0;

while ($counter < 5) {
  say "";
  $counter ++;
}}
use Term::ANSIScreen qw(cls);
cls();


my $where;
my $phrase = "the quick brown fox jumped over the lazy dog.";
say "This will use the index and rindex functions to show where the word \"the\" appears in the phrase " . $phrase;
fixscreen;

my $word = "the";
$where = index ($phrase, $word);
say "The word " . $word . " was found at location " . $where . " using index.";
$where = rindex ($phrase, $word);
say "The word " . $word . " was found at location " . $where . " using rindex.";
say "";
fixscreen;
