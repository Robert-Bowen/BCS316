#RB-BCS316
#Demonstrates how the Acme::123 module can print numbers from most common languages.
#Feel free to change the 2 letter code to see if another language you are familiar with works
use 5.23.0;
use Term::ANSIColor qw(:constants);
use Acme::123;
my $numbrs;
$numbrs = Acme::123->new;

print ORANGE;   #Outputs in the color specified as 
                # long as the terminal we are running it on supports it.
print "\nEnglish\n\n";
$numbrs->printnumbers; #print English numbers - 
                        # English is the default if no language is set.

print GREEN; 
print "\nFrench\n\n";
$numbrs->setLanguage('fr'); #sets language to French
$numbrs->printnumbers; #prints numbers (now in French)

print YELLOW;
print "\nSpanish\n\n";
$numbrs->setLanguage('sp'); #sets language to Spanish
$numbrs->printnumbers; #prints numbers (now in Spanish)

