#!/usr/bin/perl -w
use strict;

my $n_temp=<STDIN>;
my ($i,$j,$k) = split(/ /,$n_temp);
chomp($i);
chomp($j);
chomp($k);

sub rev
{
	return @_;
}
my @a;
my $count;
for my $n($i..$j){
	my $n0=reverse($n);
	my $n_tmp=abs($n-$n0);
	$count+=1 if($n_tmp % $k == 0);
}

print "$count\n";

exit 0;
