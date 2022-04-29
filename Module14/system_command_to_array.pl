use 5.13.0;
my $count = 1;
my @dir_lines = `ls -lasth`;
foreach my $dir (@dir_lines)
 	{
	print "File $count is $dir";
	$count++;
	}

