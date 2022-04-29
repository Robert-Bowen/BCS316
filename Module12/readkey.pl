use Term::ReadKey;
print "Please enter a password\n";
print "The password will not display anything as you are typing it.\n";
ReadMode('noecho');
$password = ReadLine(0);
print "You entered $password\n";
