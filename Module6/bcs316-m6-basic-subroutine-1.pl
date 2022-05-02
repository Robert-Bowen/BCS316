#RB-BCS316
#Basic script for displaying how a subroutine works.
#Brings in variables passed to the subroutine and then displays some text
use 5.23.0;
use Data::Dumper qw(Dumper);

sub greet {
my ($n) = @_;
say "Hi " .  $n;
}

my @names = ("Robert","Sam");
foreach my $n (@names) {
  greet ($n)
}
