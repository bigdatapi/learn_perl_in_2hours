# test 1
print +( ( 1, 2, 3 )[ 1, 2, 3 ] )[ 1, 2, 3 ];
print "\n";

# test 2
my $foo = sub { return {@_}; };
print "{${&$foo(1,2,3)}{2}}\n";

my $bar = sub { return [ @_, 4, 5 ]; };

print "[${&$bar(1,2,3)}[2]]\n";
