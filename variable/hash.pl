my %hash = ( one => 1, two => 2 );
my $hash_ref = { three => 3, four => 4 };
my @hash_arr = %hash;
print "@hash_arr\n";

if ( exists $hash{three} ) {
    print "$hash{three}\n";
}
else {
    print "$hash_ref->{three}\n";
}

foreach my $entry (%hash) {
    print "$entry\n";
}

foreach my $k ( keys %hash ) {
    print "$k=>$hash{$k}\n";
}
