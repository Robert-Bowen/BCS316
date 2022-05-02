#!/usr/bin/perl
use 5.13.0;
use Data::Dumper qw(Dumper); 
my @days=qw(Monday Tuesday Thursday Friday);
my @result=grep /Mon/, @days;
say Dumper \@result;
