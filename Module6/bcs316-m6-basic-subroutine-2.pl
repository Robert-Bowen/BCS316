#RB-BCS316
#Subroutine script.  Brings in 2 arguments.  The first one gets a different message than others
use 5.23.0;
state $counter = 0;

sub greet {
my ($n) = @_;
if ($counter == 0) {say "Hi " .  $n . " - You are the first one here";}
else {say "Hi " . $n . " - Others are here too";}
$counter++
          }

my @names = ("Louise","Gene");
foreach my $n (@names)  {
  greet ($n)
                        }





