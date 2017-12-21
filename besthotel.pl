#!/usr/bin/perl -w
use strict;

sub besthotel(){
	my $n=<STDIN>;
	my %hotels;

	while($n>0){
		my $h_temp=<STDIN>;
		my($id,$rate)=split / /,$h_temp;
		chomp($id);
		chomp($rate);
		$hotels{$rate}= [] unless exists $hotels{$rate};
		push @{$hotels{$rate}},$id;
		$n--;
	}
	my @t=();
	for my $rate (sort{$b <=> $a} keys %hotels){
		#print "$rate: ";
		my @id = @{$hotels{$rate}};
		#print join ',',sort @id;
		#print "\n";
		push(@t,sort @id);
	}
	#print join ', ',@t;
	#print "\n";
	my %seen;
	my @uniq= grep {not $seen{$_}++} @t;

	print join "\n",@uniq;
}



besthotel();
