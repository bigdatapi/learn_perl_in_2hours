#!/usr/bin/env perl
# shebang line

# pragma
use strict;
use warnings;

# import module Data::Dumper
use Data::Dumper;

# declaration of prototype
sub fibnacci($);

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
        fibnacci($n) );
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

sub fibnacci($) {

    # list context, unpack arguments
    my ($n) = @_;
    if ( $n == 1 or $n == 2 ) {
        return 1;
    }

    # trick return, damn it
    fibnacci( $n - 1 ) + fibnacci( $n - 2 );
}

