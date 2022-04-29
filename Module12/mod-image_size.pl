	use Image::Size;
    # Get the size of mona-lisa.jpg
($globe_x, $globe_y) = imgsize("mona-lisa.jpg");
print "X size = " . $globe_x . "\n";
print "Y size = " . $globe_y . "\n";