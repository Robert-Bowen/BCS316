use 5.28.0;
#no strict;
my %hash1=('Intel' => 'Pentium', 'AMD' => 'Athlon', 'Transmeta' => 'Crusoe');
print $hash1{AMD};
print "\n";
print $hash1{Transmeta};
print "\n";
print $hash1{Intel};
print "\n These are the keys for Hash1 \n";
print keys(%hash1);
print "\n";

print "The keys (not mushed together are\n";
for (keys %hash1) {
print "$hash1{$_}\n";}

