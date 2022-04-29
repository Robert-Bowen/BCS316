    use strict;
    use warnings;
    use diagnostics;
    use 5.010;
     
    my @many_strings = ("abc", "cd", "e", "fg", "hi", "hello world", "abc", "cd", "e", "fg", "hi", "hello world");
     
    say length @many_strings;  # 2 
    say scalar @many_strings;  # 12
    say @many_strings;


	say scalar @many_strings; # First way to say array size

	say $#many_strings; # Second way to say array size

	my $arrSize = @many_strings;
	say $arrSize; # Third way to say array size

