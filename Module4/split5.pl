#!/usr/bin/perl
use 5.13.0;
use warnings;
use strict;
my $line;

sub Blank10 {for (my $i = 0; $i < 10; $i++) {print "\n";}}

Blank10;

while (defined($line = <>)) { chomp($line);
 
my ($username, $password, $uid, $gid, $realname, $home, $shell) = split /:/, $line;

print "Username - $username ---###--- Real Name - $realname\n";

}

Blank10;
