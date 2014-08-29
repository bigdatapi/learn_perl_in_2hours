#!/usr/bin/env perl

use strict;
use warnings;

my $ival     = 12;
my $fval     = 3.14;
my $sci      = 1.82e45;
my $dval     = 0xffffffff;
my $oval     = 0457;
my $bin      = 0b0101;
my $readable = 10_000_000;
my $str1     = "hello, it's not a joke";
$str1 = qq#hello, it's not a joke#;
my $str2 = 'hello, it\'s not a joke';
$str2 = q(hello, it's not a joke);
my $rval = \$str1;
my $long = <<EOF;
#!/usr/bin/env perl

use strict;
use warnings;

my $ival = 12;
my $fval = 3.14;
my $sci = 1.82e45;
my $dval=0xffffffff;
my $oval=0457;
my $bin=0b0101;
my $readable=10_000_000;
my $str1="hello, it's not a joke";
my $str2='hello, it\'s not a joke';
my $rval=\$str1;
EOF
