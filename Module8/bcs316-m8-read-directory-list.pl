#RB-BCS316
#This script shows an example of how to get a directory listing using Perl's built in file utilities.  We will do this directly to the OS in Module 14.
use 5.23.0;

opendir (MDIR, "Names-State") || die; #MDIR is the filehandle that opendir uses.
@filelist=readdir MDIR;
closedir MDIR;

foreach $filename (@filelist)
 {print "We have a file called $filename \n";} 
