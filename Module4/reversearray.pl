use 5.28.0;
my @rev;
my $item;
my @array = qw(Morning Noon Night);
sub revarray
{ return reverse(@_);}
@rev=revarray (@array);

foreach $item (@rev)
	{say $item;
	}