#RB-BCS316
#This script shows how to view the arguments passed to the script on the command line.
# Try running it with some space separated arguments to see what is sent into the Perl script.

## Reads the file(s) entered at the command line
## Checks to see if an argument was passed and if not, it calls the function die and 
## displays a message

my $name = $ARGV[0];
if (not defined $name) {
  die "No filename specified\n";
}


while (<>) {
chomp;
print "The file contained  $_ \n"; }
