my @arr = ( 1, 2, 3 );

# scalar context
my $len = @arr;
print $len . "\n";

# array context
print "@arr\n";
print scalar @arr . "\n";

my $str  = "/data/dbbak/xtrabackup";
my $hit1 = $str =~ /\/([^\/]+)/;
print "$hit1\n";
my ( $x, $y, $z ) = $str =~ /\/([^\/]+)/g;
print "$x,$y,$z\n";
my $hit1 = $str =~ /\/([^\/]+)/;
print "$hit1\n";
my @hit3 = $str =~ /\/([^\/]+)/g;
print "@hit3\n";

my $hit1 = $str =~ /\/([^\/]+)/g;
print "$hit1\n";
my ( $x, $y, $z ) = $str =~ /\/([^\/]+)/g;
print "$x,$y,$z\n";
my $hit1 = $str =~ /\/([^\/]+)/g;
print "$hit1\n";
my @hit3 = $str =~ /\/([^\/]+)/g;
print "@hit3\n";
