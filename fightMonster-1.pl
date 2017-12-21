#!/usr/bin/perl

sub getMaxMonsters {
	($n,$hit,$t,@h)=@_;   
	
	@s_arr=sort{$a<=>$b} @h;
	print "@s_arr\n";
	$limit=$t*$hit;
	$count=0;
	$sum=0;
	for ($i=0;$i<=$#s_arr;$i++){
		$sum+=$s_arr[$i];
		if($sum > $limit){
			return $i;
		}
	}
	return $i;
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
