#RB-BCS316
#Reverses the content of an array.
use 5.23.0;
my @array = qw(Morning Noon Night);
sub revarray
{ return reverse(@_);}
my @rev=revarray (@array);

foreach my $item (@rev)
	{say $item;
	}
