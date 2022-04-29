sub dec2bin {
    my $str = unpack("B32", pack("N", shift));
   # $str =~ s/^0+(?=\d)//;   # otherwise you'll get leading zeros
    return $str;
}

sub bin2dec {
    return unpack("N", pack("B32", substr("0" x 32 . shift, -32)));
}

$num = bin2dec('01100101');  # $num is 54
$binstr = dec2bin(101);      # $binstr is 110110

print $num . "\n";
print $binstr . "\n";
