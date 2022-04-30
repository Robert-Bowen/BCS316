open(BIGFILE,"data1.txt") || die "Can't open: $!";
@list=<BIGFILE>;
close BIGFILE;
$num = 1;
print $list[0] . "\n";
print $list [4] . "\n";




