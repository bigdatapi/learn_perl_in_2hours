#!/usr/bin/env perl
# shebang line

# pragma
use strict;
use warnings;

my $hash_ref = { one => 1, two => 2 };
my $hash_ref = { 1 => one, 2 => two};
print "$hash_ref->{one}\n";

my $hash_ref2 = { k1 => { 1 ? 1 : undef } };
my $hash_ref2 = { k1 => 1 ? 1 : undef };
print "$hash_ref2->{k1}\n";

sub foo {
    return "hello world";
}
$hash_ref2 = { k1 => foo };
$hash_ref2 = { k1 => &foo };
$hash_ref2 = { k1 => foo() };
print "$hash_ref2->{k1}\n";

my $arr_ref = [ 1, 2, 3 ];
print "last elem of \$arr_ref is " . $arr_ref[$#@$arr_ref] . "\n";
print "last elem of \$arr_ref is " . $arr_ref[$#{$arr_ref}] . "\n";
print "last elem of \$arr_ref is " . @$arr_ref[$#@$arr_ref] . "\n";
print "last elem of \$arr_ref is " . @$arr_ref[$#{@$arr_ref}] . "\n";

my $files = [ STDOUT, STDERR ];
open my $fp, ">/tmp/xx.out";
my $files = [ *STDOUT, *STDERR, $fp ];
print $files[1] "stuff\n";
print @$files[1] "stuff\n";
print $files->[1] "stuff\n";
print { $files->[1] } "stuff\n";
close $fp;

foreach my $item @arr {
	print;
}
foreach my $item (@$arr_ref) {
    print $item . "\n";
}
