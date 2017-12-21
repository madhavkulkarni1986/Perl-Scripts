#!/usr/bin/perl -w

use strict;

print "Enter the number of strings:";
my $n=<STDIN>;
chomp($n);

my @pattern=();
my $i;
for($i=0;$i<$n;$i++){
	$pattern[$i]=<STDIN>;
	chomp($pattern[$i]);
}

print "Enter number of patterns:";
my $q=<STDIN>;

my @match=();
for($i=0;$i<$q;$i++){
	$match[$i]=<STDIN>;
	chomp($match[$i]);
}
foreach my $patt(@match){
	my $cnt=0;
	foreach my $el(@pattern){
		if($patt eq $el){
		$cnt++;
		}
	}
	print "$cnt\n";
}

exit 0;
