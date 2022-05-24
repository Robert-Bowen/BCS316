
use 5.13.0;
use List::MoreUtils qw(uniq);
use strict;
no warnings;
use Term::Menus;


my $season; 
my $episodeNum;
my $episodeName;
my $director;
my $writer;
my $character;
my $dialogue;
my $dialogueWithDirection; 
my @temp; my @temp2; my $temp3; my @temp4;
my $line; my $count;
my $fileLine;
my $readArray;
my @characters; my @writers; my @dialogues; my @directors; my @allCharacters;
my @episodeCount;
my @allCharactersList;

sub clean {
    my $text = shift;
    $text =~ s/\n//g;
    $text =~ s/\r//g;
    return $text;
}


open (my $data , '<', "StarWars4-6.csv")|| die "could not open Star-Wars4-6\n$!";

#Opens up the file and brings it into an array

#The header of the .csv is "","index","season","episode","episode_name","director","writer","character","text","text_w_direction"


my @array=uniq(<$data>);
# Sorts the array by whichever field you select
# We will do this to get a list of all the platforms, genres, and publishers
# For this file the elements are:
#	0 - Line Number - Not used
#	1 - Index - Matches the line number
#	2 - Season
#	3 - Episode
#	4 - Episode_Name
#	5 - Director(s)
#	6 - Writer(s)
#	7 - Character saying the line
#	8 - Dialogue line
#	9 - Dialogue line with direction from director(s)

# We use @temp and @temp2 as temporary variables while we bring in the data and use uniq to just give us the unique entries

# Get the Characters
# Done the long way -- swapping data in and out of the temp arrays for demonstration purposes only
foreach $line (@array) {
@temp=split(/\,/,$line);
push @temp2, $temp[7];
}
@temp = uniq @temp2;
@characters = sort @temp;
@allCharacters = @temp2;
@temp = ();
@temp2 = ();

my %counts; # temp hash to do counting
$counts{$_}++ for @allCharacters; # creates the hash with the name of the character and how many times it was seen.
my @charCount;
my $string; # just a placeholder/temp variable
foreach my $charNameCount (sort { $counts{$b} <=> $counts{$a} } keys %counts) {
push @charCount, $string . join(',',$charNameCount, $counts{$charNameCount});

foreach my $charCounted (@charCount) 
{if (($charCounted =~ /,[0-9]{3,}/) || ($charCounted =~ /,[1][0-9]/)) 
	{my @spl = split(',', $charCounted); 
	 push @allCharactersList, @spl[0];}
			}
										}


sub ListAllCharacters {
		@allCharactersList = uniq (@allCharactersList);
		say "The characters with 10 or more lines are:";		
		while (@allCharactersList) {print join("\t\t\t", splice(@allCharactersList,0, 2)), "\n";}

		#foreach my $charName (@allCharactersList) {say "$charName";}}
		}

sub LineCount  	{
## Print the character and the number of episodes they appeared in
## Loops through the array just matching on characters that had more than a 3 digit count of lines or characters that had 10 or more lines
my @templist;
foreach my $charCounted (@charCount) 
{if (($charCounted =~ /,[0-9]{3,}/) || ($charCounted =~ /,[1][0-9]/)) {push @templist, $charCounted;}}
		while (@templist) {print join("\t\t\t", splice(@templist,0, 2)), "\n";}

		}


sub EpisodeCount { ### Episode count by character
ListAllCharacters();
say "Enter a character to get an episode count";
my $characterToFind = <STDIN>;
chomp $characterToFind;
foreach $line (@array) 
	{ #say $line;
		if ($line =~ /$characterToFind/i) {
							my @spl = split(',', $line);
							push @episodeCount, @spl[4];}}
my @uniqueEpisodeCount = uniq(@episodeCount);
if (@uniqueEpisodeCount >1)  	{
say "\n\n\n";
say "The character $characterToFind appeared in " .  scalar (@uniqueEpisodeCount) . " episodes\n\n\n";
say "The character $characterToFind appeared in the episodes  @uniqueEpisodeCount";  #note the difference of how the array is addressed
				}
else {say "The character you specified didn't appear in any episodes";}
		}

sub LinesByCharacter
	{

ListAllCharacters();
say "Enter a character to get their lines";
my $characterToFind = <STDIN>;
my @lines4Char;
my $charLine;
chomp $characterToFind;
foreach $line (@array) 
	{
		if ($line =~ /,$characterToFind,/i) {
							my @spl = split(',', $line);
							push @lines4Char, @spl[8];}}
							@lines4Char = uniq (@lines4Char);
							foreach $charLine (@lines4Char)	{
							chomp $charLine;
							if ($charLine =~ /[a-zA-Z]/) {say "$charLine";}
											}	
	}


##Menu section

my @list=('List All Characters','Characters by Line Count','Characters by Episode Count','Lines from a Character',);

my $banner="  Please Pick an Item:";
my $selection=&pick(\@list,$banner);


if ($selection eq "Characters by Line Count")
        {LineCount;}
if ($selection eq "Characters by Episode Count")
        {EpisodeCount;}
if ($selection eq "List All Characters")
	{ListAllCharacters;}
if ($selection eq "Lines from a Character")
	{LinesByCharacter;}
#if ($selection eq "All data - testing only")
#       {show_all;}
#if ($selection eq "All data - reversed")
#       {show_all_rev;}
