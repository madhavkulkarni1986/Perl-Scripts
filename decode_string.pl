#!/usr/bin/perl -w

use strict;

my $string=$ARGV[0];

#print "String: $string\n";

my %alphamap;
my %revaplhamap;
my ($i,$j);
my(@arr,@rev);
foreach ('a'..'z')
{
	push(@arr,$_);
}

@rev = reverse @arr;
$i=0;
while($i <= $#arr)
{
	$alphamap{$rev[$i]} = $arr[$i];
	$i++;
}

my @str=split //,$string;

foreach(@str)
{
	if($_ =~ m/[[:lower:]]/)
	{
		print "$alphamap{$_}";
	}
	else
	{
		print "$_";
	}
}
