#!/usr/bin/perl -w

use strict;

my $w_temp=<STDIN>;
chomp($w_temp);
my @matches=split(/ /,$w_temp);

my $r=<STDIN>;
chomp($r);
my $count=0;
my %hstr;
for my $n(0..$r*2){
	my $hid=<STDIN>;
	chomp($hid);
	my $str=<STDIN>;
	chomp($str);
	my @mystr=split(/ /,$str);
	chomp(@mystr);
	
	foreach(@matches){
		$count+=1 if grep /$_/,@mystr;
	}
	$hstr{$hid}=0 if(! exists($hstr{$hid}));
	$hstr{$hid}+=$count;
	$count=0;
}

foreach(sort keys(%hstr)){
	print "$_:$hstr{$_}\n";
}

exit 0;
