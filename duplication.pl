#!/usr/bin/perl

sub duplicationS {
	@newarr=();
  	foreach(@s){
		$n=1-$_;
		push(@newarr,$n);
	}
	push(@s,@newarr);
}

$q = <STDIN>;
chomp $q;
for my $a0 (0..$q-1){
	$x = <STDIN>;
	chomp $x;
	push(@list,$x);
}

@sorted=sort @list;
$high=$sorted[$#sorted];

push(@s,"0");
while($#s+1 <= $high){
	duplicationS();
}

foreach(@list){
	print "$s[$_]\n";
}
exit 0;
