opendir (MDIR, "Names-State") || die;
@filelist=readdir MDIR;
closedir MDIR;

foreach $filename (@filelist)
 {print "We have a file called $filename \n";} 
