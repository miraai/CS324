use strict;
use warnings;
use 5.010;

print "Enter words: ";
my $str = <STDIN>;
chomp $str;
print "Entered words '$str'\n";
my $rev = reverse $str;
say $rev;
print "Reversed words '$rev'\n";