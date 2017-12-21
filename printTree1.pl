#!/usr/bin/perl -w

use strict;

foreach my $n (@ARGV){
	print "=============== Working on $n stars ===============\n";
	print ' ' x ($n - $_/2), '*' x $_, ' ' x ($n - $_/2),"\n" for 1..$n,reverse 1..$n-1;
}
