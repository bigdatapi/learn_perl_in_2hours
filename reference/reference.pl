#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

# anonymous reference
my $scalar_ref = \"this is scalar value";
my $arr_ref    = [ 1, 2, 3 ];
my $hash_ref   = { key1 => 1, key2 => 2, key3 => 'hello' };
my $func_ref   = sub { print 'hello'; };

# named reference
my $v1 = 1234;
$scalar_ref = \$v1;
my @v2 = qw(h e l l o);
$arr_ref = \@v2;
my %v3 = ( k1 => 1, k2 => 'hello' );
$hash_ref = \%v3;

sub foo {
    return "foo";
}
$func_ref = \&foo;

# de-reference
print "de-reference a scalar ref var : $$scalar_ref\n";
print "de-reference a array ref var : " . Dumper(@$arr_ref) . "\n";
print "de-reference a hash ref var : " . Dumper(%$hash_ref) . "\n";
print "de-reference a sub routine var : " . &$func_ref . "\n";

# retrieve by reference
print "$arr_ref->[0] $$arr_ref[0]\n";
print "$hash_ref->{k1} $$hash_ref{k1}\n";

# usage of hash ref
sub foo2($$) {
    my ( $school, $arg_ref ) = @_;
    my $id     = $arg_ref->{id};
    my $name   = $arg_ref->{name};
    my $gender = $arg_ref->{gender};
    my $nation = $arg_ref->{nation};
}

sub bar2($$$$$) {
    my ( $school, $id, $name, $gender, $nation ) = @_;
}

foo2( 'zhejiang univ.',
    { id => 9527, gender => 'male', nation => 'China', name => 'harry' } );
bar2( 'zhejiang univ.', 9527, 'zc', 'M', 'China' );

# default argument
sub fun2(%) {
    my (%arg) = ( name => 'harry', gender => 'M', @_ );
    my $name = $arg{name};
    my $gender = $arg{gender};
    my $nation = $arg{nation};
    my $id     = $arg{id};
}

fun2( name => 'jack', id => 1234, nation => 'US' );

# check whether variable is ref or not;
print 'ref $scalar_ref ' . ref($scalar_ref) . "\n";
print 'ref $arr_ref ' . ref($arr_ref) . "\n";
print 'ref $hash_ref ' . ref($hash_ref) . "\n";
print 'ref $func_ref ' . ref($func_ref) . "\n";
my $str  = 'hello';
my @arr  = ( 1, 2, 3 );
my %hash = ( one => 1, two => 2 );

print 'ref $str ' . ref($str) . "\n";
print 'ref @arr ' . ref(@arr) . "\n";
print 'ref %hash ' . ref(%hash) . "\n";
print 'ref &func ' . ref(&fun2) . "\n";

#my $my_var = 'scalar';
#my @my_var = ( 1, 2, 3 );
#my %my_var = ( one => 1 );
#print 'ref *my_val ' . ref( *my_val ) . "\n";
