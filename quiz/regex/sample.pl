#!/usr/bin/env perl
use strict;
use warnings;

my $long_str=<<EOF;
if (1) {
    if (0) {
        print "impossible\n";
    }
    else {
        print "hm...\n";
    }
}
EOF
my $pat=qr/{ [^{]*? { ([^}]*?) } [^{]*? { ([^}]*?) } [^}]*? }/smx;

if ($long_str =~ $pat) {
    my ($hit1, $hit2) = ($1, $2);
    $hit1 =~ s/[\n]//g;
    $hit2 =~ s/[\n]//g;
}
print sprintf("bracket 1 : %s\nbracket 2 : %s\n", $long_str =~ $pat);
