#!/usr/bin/perl

sub getMaxMonsters {
	($n,$hit,$t,@h)=@_;   

	@h_sort=sort{$a<=>$b} @h;
	@n_arr=();
	foreach(@h_sort){
		$temp=$_;
		while($temp > 0 && $t>0){
			$temp-=$hit;
			$t--;
		}
		push(@n_arr,$temp);
		if($t<=0){
			break;
		}

	}
	$count=0;
	foreach(@n_arr){
		if($_<=0){
			$count+=1;
		}
	}
	return $count;

}

$n_temp = <STDIN>;
@n_arr = split / /,$n_temp;
$n = $n_arr[0];
chomp $n; 
$hit = $n_arr[1];
chomp $hit;
$t = $n_arr[2];
chomp $t;
$h_temp = <STDIN>;
@h = split / /,$h_temp;
chomp @h;
$result = getMaxMonsters($n, $hit, $t, @h);
print "$result\n";

exit 0;
