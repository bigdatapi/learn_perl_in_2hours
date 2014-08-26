#!/usr/bin/env perl
# shebang line

# pragma
use strict;
use warnings;

# import module Data::Dumper
use Data::Dumper;

# declaration of prototype
sub fibnacci($$);

# definition of sub routine
sub say_hello {

    # scalar var in lexical scope
    my $hello_str = <<EOF;
        #===============================================================================
        #       AUTHOR:   (harryczhang), <bigdatapi\@qq.com>
        #      CREATED:  07/30/2014 08:56:23 PM CST
        #===============================================================================
EOF
    return $hello_str;
}

sub run {

    # first argument
    my $n = shift;

    # regular expression
    if ( $n =~ /\D/ ) {

        # write content to file descriptor
        print STDERR "input argument must be positive number : $n\n";
        return 1;
    }

    # formatted string
    my $res = sprintf( "The ${n}th element of fibnacci sequence is %d\n",
        fibnacci($n,0) );
    print STDOUT $res;
}

# another way to call sub routine
print &say_hello . "\n";

# read line by line from stdin
while (<>) {

    # trick
    chomp;
    run($_);
}

my $call_stack_hash = {};
sub fibnacci($$) {
    my ( $n, $depth ) = @_;
    for my $i ( 0 .. $depth ) {
        print "  ";
    }
    print "calling fibnacci2($n)\n";
    if ( $n == 1 or $n == 2 ) {
        return 1;
    }

    my $ret = (exists $call_stack_hash->{$n - 1} ? $call_stack_hash->{$n - 1} : fibnacci($n-1,$depth+1)) + (exists $call_stack_hash->{$n-2} ? $call_stack_hash->{$n-2}:fibnacci($n-2,$depth+1));
    if (not exists $call_stack_hash->{$n}) {
        $call_stack_hash->{$n} = $ret;
    }
    return $ret;
}
