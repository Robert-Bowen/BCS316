#RB-BCS316
#This script shows an example an interaction with the OS.  
# Unlike bcs316-m14-system-dir.pl that simply executed a command, this one executes the command and outputs them counted. 
use 5.23.0;
system ("dir");
my $count = 1;
my @dir_lines = `ls -lasth`;
foreach my $dir (@dir_lines)
 	{
	print "File $count is $dir";
	$count++;
	}

