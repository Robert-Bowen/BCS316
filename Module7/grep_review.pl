#!/usr/bin/perl
use 5.13.0;
use Data::Dumper qw(Dumper); 
my @days=qw(Muno Plex Toodee Brobee Foofa );
my @result=grep /oo/, @days;
say Dumper \@result;
