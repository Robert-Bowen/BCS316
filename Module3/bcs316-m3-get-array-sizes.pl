#RB-BCS316
#Shows 3 of the ways we can get the size of an array 
use 5.28.0;

    
#Creates an array with 12 elements. 
    my @many_strings = ("abc", "cd", "e", "fg", "hi", "hello world", "abc", "cd", "e", "fg", "hi", "hello world");
     
say scalar @many_strings;  # Gives us the number of elements 							#which is 12
say @many_strings;	#Shows the contents of the array
					#but all elements are output with	
					#no formatting

#IMPORTANT NOTE - This gives you the index of the last element of 
# the array and not the total number of elements.
# Even though we know elements start with an element number of zero.

say $#many_strings; # Another way to say array size

my $arrSize = @many_strings;
say $arrSize; # One more way way to say array size

