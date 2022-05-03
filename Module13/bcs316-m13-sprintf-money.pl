#RB-BCS316
#This script shows an example of using the sprintf function.
use 5.23.0;
## Uses sprintf to format some dollar values correctly;
my @money = ("82.8881", "41.9992", "42.0013", "108.0514", "82.487", "85.491", "86.495");
foreach my $moneyf (@money) {
my $money = sprintf "%.2f", $moneyf;
print "\t \t $moneyf formats to \$$money\n\n";
}
