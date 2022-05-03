#RB-BCS316
#This script shows an example of using the smartmatch feature (function)

# We can use the line use experimental 'smartmatch'; to suppress the warnings that smartmatch is experimental.  That line has to be above use 5.23.0 since 
# use 5.23.0 brings in use warnings; by default
use 5.23.0;

my %names = (
    "Fred",  "Rogers",
    "Big", "Bird",
    "Cookie",  "Monster",
);
my $flag = 0;
foreach my $key ( keys %names ) {
next unless $key =~ /Fred/; $flag = $key;
last;
}
print "I found a key matching 'Fred'. It was $flag\n" if $flag;
## The simpler way
say "I found a key using smartmatch matching 'Fred'" if %names ~~ /Fred/;
