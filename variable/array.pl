#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
my @arr           = ( 1, 2, 3 );
my $arr_ref       = \@arr;         # $arr_ref : scalar reference to @arr
my $anonymous_ref = [ 4, 5, 6 ];

# retrieve array
print "$arr[$#arr]\n";
print "$arr_ref->[$#arr]\n";
print "@{$anonymous_ref}[$#{@$anonymous_ref}]\n";

# traverse array
foreach my $item (@arr) {
    print $item . "\n";
}

for ( my $i = 0; $i <= $#arr; $i += 1 ) {
    print "$arr[$i]\n";
}

my %map_arr = map { $_ % 2 ? ($_ => 'odd') : ($_ => 'even') } ( @arr, @$anonymous_ref );
print Dumper(%map_arr) . "\n";
my @map_arr = grep { $_ % 2 } ( @arr, @$anonymous_ref );
print "@map_arr\n";
@map_arr = map { $_ if ( $_ % 2 ); } ( @arr, @$anonymous_ref );
print "@map_arr\n";
