#RB-BCS316
#Uses the rindex function to find the location of the word "the" in the string.
#Remember that index starts counting from the left and gives you the position from the left
# rindex starts counting from the right but gives you the position from the left.
#The first character of the string to look through is position 0.

my $where;
my $phrase = "the quick brown fox jumped over the lazy dog.";
say "This will use the index and rindex functions to show where the word \"the\" appears in the phrase " . $phrase;
fixscreen;

my $word = "the";
$where = index ($phrase, $word);
say "The word " . $word . " was found at location " . $where . " using index.";
$where = rindex ($phrase, $word);
say "The word " . $word . " was found at location " . $where . " using rindex.";
say "";

