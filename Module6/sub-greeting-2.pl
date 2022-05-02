#!/usr/bin/perl
use strict;
use warnings;
use 5.13.0;
state $counter = 0;

sub greet {
my ($n) = @_;
if ($counter == 0) {say "Hi " .  $n . " - You are the first one here";}
else {say "Hi " . $n . " - Others are here too";}
$counter++

}

my @names = ("Robert","Sam");
foreach my $n (@names) {
  greet ($n)
}
