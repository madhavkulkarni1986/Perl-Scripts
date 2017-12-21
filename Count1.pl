#!/usr/bin/perl -w

use strict;

#print "Enter the number of strings:";
my $n=<STDIN>;
chomp($n);

my @pattern=();
my $i;
for($i=0;$i<$n;$i++){
	$pattern[$i]=<STDIN>;
	chomp($pattern[$i]);
}

#print "Enter number of patterns:";
my $q=<STDIN>;

my @match=();
for($i=0;$i<$q;$i++){
	$match[$i]=<STDIN>;
	chomp($match[$i]);
}
my ($temp,$count)=("@pattern",0);
foreach(@match) {
	$count=0;
	$count = $temp =~ s/\b$_\b//g;
	$count!=0? print "$count\n" : print "0\n";
}
exit 0;
