#!/usr/bin/perl

sub whoGetsTheCatch {
($n, $x, $X, $V) = @_;
my @f_speed;
for(my $i=0;$i<=$#X;$i++) {
	$dist=abs($X[$i]-$x);
	$time=$dist/$V[$i];
	push @f_speed, $time;
  }
@n_arr = sort {$a<=>$b} @f_speed;
$flag=0;
for($i=0;$i<=$#n_arr-1;$i++)
{
  if($n_arr[$i] == $n_arr[$i+1])
  {
	$flag = 1;
  } 
}

if($flag == 1)
{
	return -1;
}
else
{
	for($i=0;$i<=$#f_speed;$i++)
	{
		if($f_speed[$i] == $n_arr[0])
		{
			return $i;
		}
	}
}
}

#  Return the index of the catcher who gets the catch, or -1 if no one gets the catch.
# n : No of catchers
# x = position of the buterfly
# @X : Positions of catchers
# @V : Speed of the catchers moving toward the butterfly

$n_temp = <STDIN>;
@n_arr = split / /,$n_temp;
$n = $n_arr[0]; 
chomp $n;
$x = $n_arr[1];
chomp $x;
$X_temp = <STDIN>;
@X = split / /,$X_temp;
chomp @X;
$V_temp = <STDIN>;
@V = split / /,$V_temp;
chomp @V;
$result = whoGetsTheCatch($n, $x, \@X, \@V);
print "$result\n";
