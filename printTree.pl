#!/usr/bin/perl -w

use strict;

foreach my $n (@ARGV){
	print "=============== Working on $n stars ===============\n";
	print ' ' x ($n - $_), '*' x $_, "\n" for 1..$n,reverse 0..$n-1;
}
