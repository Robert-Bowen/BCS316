#!/usr/bin/perl
use 5.13.0;
use warnings;
use strict;
 
my $str = "root:*:0:0:System Administrator:/var/root:/bin/sh";
my ($username, $password, $uid, $gid, $real_name, $home, $shell) = split /:/, $str;
print "$username\n";
print "$password\n";
print "$uid\n";
print "$gid\n";
print "$real_name\n";
print "$home\n";
print "$shell\n";
