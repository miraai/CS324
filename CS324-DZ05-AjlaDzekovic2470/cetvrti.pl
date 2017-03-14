#!/usr/bin/perl
use strict;
use warnings;

my @a1 = (1,2,3,4,5); 
my @a2 = ('a', 'b', 'c', 'd');

sub zip {
	my($a1,$a2) = @_; 
	my $razlika = scalar @$a1 - scalar @$a2; 
	
	if ($razlika > 0) { 
		splice(@$a1,-$razlika); 
	}

	elsif($razlika < 0){
		splice(@$a2,$razlika);	
	}

	foreach my $i(@$a1){ 
		say $i . ", ";
		foreach my $j(@$a2){
			say $j. ", ";
			$j++;
			last;
		}
	}
};

zip(\@a1, \@a2);