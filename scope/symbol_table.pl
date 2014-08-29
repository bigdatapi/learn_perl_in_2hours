#!/usr/bin/env perl
use strict;
use warnings;

our $var1 = "global var1 is visible in symbol table";
local $var1 = "local var1 is invisible in symbol table";
my $var3 = "lexical var3 is invisible in symbol table";
sub sub1 { print "sub1\n" }

printf( "%-20s => %25s,\n", $_, $main::{$_} ) for keys %main::;

