use 5.20.0; #Allows us to use say
my $name;
say "What is your name?";
$name = <STDIN>;
chomp $name;
if ($name eq "Robert") {say "Hello Robert";}
	else {say "Hello not Robert";}
	
	