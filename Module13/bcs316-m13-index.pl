#RB-BCS316
#Uses the index function to find the location of the words in the @word array.
#Remember that index starts counting from the left and gives you the position from the left
#The first character of the string to look through is position 0 so in the example below the word "quick" will be found at position 4 (letter 5)

use 5.23.0;

my $phrase = "The quick brown fox jumped over the lazy dog.";
my @word = qw (quick fox lazy dog);
say "This will show the index of where the strings quick, fox, lazy, and dog appear in the text \"The quick brown fox jumped over the lazy dog.\"";
foreach my $word (@word) {
my $where = index ($phrase, $word);
say "The word " . $word . " was found at location " . $where . ".";
}
