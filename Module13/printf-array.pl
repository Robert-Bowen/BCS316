#!/usr/bin/perl
use warnings; use strict; use 5.13.0;
my @name; my $select;
$name [0] = "John";
$name [1] = "Ringo";
$name [2] = "Paul";
$name [3] = "Paul";

my $format = ("%10s\n" x @name);

printf $format,@name;

say "";
@name = ("Herman","Eddie","Bart","Homer");

$format = ("%10s\n" x @name);

printf $format,@name;
say "";

@name = qw (Batman Robin Superman Lex);

$format = ("%10s\n" x @name);

printf $format,@name;
