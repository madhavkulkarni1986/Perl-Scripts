#!/usr/bin/perl

#The first line contains two space-separated integers denoting the respective values of s and t. 
#The second line contains two space-separated integers denoting the respective values a of b and . 
#The third line contains two space-separated integers denoting the respective values of m and n. 
#The fourth line contains m space-separated integers denoting the respective distances that each apple falls from point a. 
#The fifth line contains n space-separated integers denoting the respective distances that each orange falls from point b.


$s_temp = <STDIN>;
@s_arr = split / /,$s_temp;
$s = $s_arr[0]; 
chomp $s;
$t = $s_arr[1];
chomp $t;
$a_temp = <STDIN>;
@a_arr = split / /,$a_temp;
$a = $a_arr[0]; 
chomp $a;
$b = $a_arr[1];
chomp $b;
$m_temp = <STDIN>;
@m_arr = split / /,$m_temp;
$m = $m_arr[0]; 
chomp $m;
$n = $m_arr[1];
chomp $n;
$apple_temp = <STDIN>;
@apple = split / /,$apple_temp;
chomp @apple;
$orange_temp = <STDIN>;
@orange = split / /,$orange_temp;
chomp @orange;
$countA=0;
$countO=0;
#Apple logic
foreach $c(@apple){
	$range=$a+$c;
	if($range >= $s && $range <=$t){
		$countA+=1;
	}
}

#Orange logic
foreach $d(@orange){
	$range=$b+$d;
	if($range >= $s && $range <=$t){
		$countO+=1;
	}
}

print $countA . "\n";;
print $countO;
