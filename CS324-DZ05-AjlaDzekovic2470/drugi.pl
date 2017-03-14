#!/usr/bin/perl
use strict;
use warnings;

my $filename = 'fajl.txt';
my @niz;
if (open(my $fh, '<:encoding(UTF-8)', $filename)) {
	while (my $row = <$fh>) {
		push (@niz, $row);
	}
	say reverse @niz;
} else {
	say "Fajl nije dostupan"
}