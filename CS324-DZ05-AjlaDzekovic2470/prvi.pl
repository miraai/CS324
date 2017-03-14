#!/usr/bin/perl
use strict;
use warnings;


print "Unesite ime: ";
my $ime = ucfirst(<>);
chomp $ime; 

my %prezime = (
	"Ajla" => "Dzekovic",
	"Filip" => "Micic",
	"Milan" => "Hakaj",
	"Jovan" => "Cucic",
);
print $prezime{$ime};