#!/usr/bin/perl

sub geometricTrick {
	my $str="@_";
	my (@a,@b,@c)=();
	my @temp=split //,$str;
	my $count=0;
	foreach(@temp){

		if($_ eq 'b'){
			$b_val=0;
			$b_val=($count+1)**2;
	                push(@b,$b_val);
	        }

		elsif($_ eq 'a'){
			push(@a,$count);
		}

		elsif($_ eq 'c'){
	                push(@c,$count);
	        }
		$count++;
	}
	foreach $a(@a){
		foreach $c(@c){
			push(@a_c,($a+1)*($c+1));
		}
	}

	($temp,$count,$t_count)=("@a_c",0,0);
	foreach(@b){
		$count=$temp =~ s/$_//g;
		$t_count+=$count;
	}

	return $t_count;
}

$n = <STDIN>;
chomp $n;
$s = <STDIN>;
chomp $s;
$result = geometricTrick($s);
print "$result\n";

exit 0;
