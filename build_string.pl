#!/usr/bin/perl -w
use strict;

my $string=$ARGV[0];

my @substring;

#push @list, $str =~ /(?=(.{$_}))/g for 1 .. length $str;

push @substring, $string =~ /(?=(.{$_}))/g for 1 .. length $string;

print join ', ', @substring;

exit 0;
