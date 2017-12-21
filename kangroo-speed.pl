#!/usr/bin/perl

$x1_temp = <STDIN>;
@x1_arr = split / /,$x1_temp;
$x1 = $x1_arr[0];
chomp $x1; 
$v1 = $x1_arr[1];
chomp $v1;
$x2 = $x1_arr[2];
chomp $x2;
$v2 = $x1_arr[3];
chomp $v2;


if ($x1 >= $x2 || $x1 < 0 || x2<0 || $v1 < 0 || $v1 > 10000 || $v2 < 0 || $v2 > 10000 || $x1 > 10000 || $x2 > 10000)
{
	print "NO";
	#print "$x1	$x2\n";
	exit 0;
}

if ($x2 > $x1 && $v2 >= $v1)
{
	print "NO";
	#print "$x1	$x2\n";
	exit 0;
}

#while($x1<=10000 && $x2 <=10000)
while(1)
{
	#print "$x1	$x2\n";
	$x1+=$v1;
	$x2+=$v2;
	if($x1==$x2)
	{
		print "YES";
		#print "$x1	$x2\n";
		exit 0;
	}
}
#print "$x1	$x2";
print "NO";
