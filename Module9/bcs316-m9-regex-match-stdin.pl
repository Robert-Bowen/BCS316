#RB-BCS316
#Takes lines of standard input and looks for either abc or xyz..
use 5.23.0;

while (<STDIN>) {

	if (/xyz/) {

		print ">> found 'xyz' in $_ \n";

		}
		
	if (/abc/) {
		
		print ">> found 'abc' in $_ \n";

		}
		
		

		    }
