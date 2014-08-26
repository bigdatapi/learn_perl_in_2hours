#!/usr/local/bin/perl 

use strict;
use warnings;


sub fibnacci($);

sub say_hello {
    my $hello_str = <<EOF
        #===============================================================================
        #       AUTHOR:   (harryczhang), <bigdatapi@qq.com>
        #      CREATED:  07/30/2014 08:56:23 PM CST
        #===============================================================================
    EOF
    return $hello_str;
}

sub run {
    my $n = shift;
    if ($n =~ /\D/) {
        print STDERR, "input argument must be positive number : $n\n";
        return 1;
    }

    my $res = sprintf("The $nth element of fibnacci sequence is %d\n", fibnacci($n));
    print(STDOUT, $res);
}

while (<>) {
    chomp;
    run($_);
}

sub fibnacci {
    my ($n) = @_; 
    if ($n == 1 or $n == 2) {
       return 1; 
   }

   fibnacci($n - 1) + fibnacci($n - 2);
}

