#!/usr/bin/perl

sub tripleRecursion {
	my ($n,$m,$k)=@_;
	my @a;

	$a[0][0]=$m;




#==========================
	for $i(0..$n-1){
	   for $j(0..$n-1){
	   	#if($i==0 && $j == 0)
		#{
		#	$a[$i][$j]=$m;
		#}
		#elsif($i == $j)
		#{
		#	$a[$i][$j]=$a[$i-1][$j-1]+$k;
		#}
		if($i > $j)
		{
			$a[$i][$j]=$a[$i-1][$j]-1;
		}
		elsif($i<$j)
		{
			$a[$i][$j]=$a[$i][$j-1]-1;
		}
	   }
	}
		for $i(1..$n-1){
			$a[$i][$i]=$a[$i-1][$j-1]+$k;
		}


	for $i(0..$n-1){
	   for $j(0..$n-1){
	   	print "$a[$i][$j] ";
	   }
	   print "\n";
	}
}

$n_temp = <STDIN>;
@n_arr = split / /,$n_temp;
$n = $n_arr[0];
chomp $n; 
$m = $n_arr[1];
chomp $m;
$k = $n_arr[2];
chomp $k;
tripleRecursion($n, $m, $k);
