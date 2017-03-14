#!/usr/bin/perl
use strict;
use warnings;

my @lista = (3..20);

sub prosek { 
	my $sum = 0;
	foreach(@lista) { 
		$sum+=$_;
	}
	return $sum/ scalar @lista; 
}

my $prosek = prosek();
say "Brojevi niza veci od " . $prosek . " su: ";
foreach(@lista) { 
	if ($_ > $prosek) {
		say $_;
	}
}