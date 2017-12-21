#!/usr/bin/perl

use strict;

my $n=<STDIN>;

chomp($n);

my $arr_temp=<STDIN>;
my @numbers=split / /,$arr_temp;
chomp(@numbers);

my @result=reverse @numbers;

print "@result";

exit 0;
