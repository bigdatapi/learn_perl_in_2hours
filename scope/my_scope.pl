
my $val="val";
for (0..2) {
    print "++++ val : $val\n";
    my $val = $_;
    print "---- val : $val\n";
}
print "==== val : $val\n";
