#!/usr/bin/perl -w

use strict;

my $string=$ARGV[0];

my @word=split('',$string);
my $flag="Yes";

#0=No
#1=Yes
#Babble
#baber
#Condition 1: No two consicutive words are same
#Condition 2: No tow consicutive words are in the vowel set:a,e,i,o,u,y

my $i=1;
while($i<$#word+1){
	if($i+1>$#word)
	{
		if($word[$i] eq $word[$i-1])
		{
			$flag="No";
		}
	}
		
	#### Condition 1 ####
	elsif($word[$i] eq $word[$i-1] || $word[$i] eq $word[$i+1] || ($word[$i]=~ m/[aieouy]/ && $word[$i-1]=~m/[aeiouy]/) || ($word[$i]=~ m/[aieouy]/ && $word[$i+1]=~m/[aeiouy]/) )
	{
		$flag="No";
	}
	$i+=2;
}
	print "$flag\n";
exit 0;
