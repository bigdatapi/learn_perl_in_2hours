#!/usr/bin/env perl
use strict;
use warnings;

our $val = "val";

sub foo {
    print "+++ val : $val\n";
    local $val = "local_val";
    for ( 1 .. 2 ) {

        #local $val = "local_val" . $_;
        bar("===");
    }
    bar("---");
}
foo();
bar("###");

sub bar {
    my ($prefix) = @_;
    print "$prefix $val\n";
}
