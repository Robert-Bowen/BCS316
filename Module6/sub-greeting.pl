#!/usr/bin/perl
use strict;
use warnings;
use 5.13.0;
use Data::Dumper qw(Dumper);

sub greet {
my ($n) = @_;
say "Hi " .  $n;
}

my @names = ("Robert","Sam");
foreach my $n (@names) {
  greet ($n)
}
