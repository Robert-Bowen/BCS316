#RB-BCS316
#This script shows an example of how to get the size of an image.  It requires the file mona-lisa.jog to be in the same directory
# or you could manually change the path in the script
use 5.23.0;
use Image::Size;
    # Get the size of mona-lisa.jpg
($globe_x, $globe_y) = imgsize("mona-lisa.jpg");
print "X size = " . $globe_x . "\n";
print "Y size = " . $globe_y . "\n";
