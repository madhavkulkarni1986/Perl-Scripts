#!/usr/bin/perl

$n_temp = <STDIN>;
@n_arr = split / /,$n_temp;
$n = $n_arr[0]; 
chomp $n;
$m = $n_arr[1];
chomp $m;
$A_temp = <STDIN>;
@A = split / /,$A_temp;
chomp @A;
$C_temp = <STDIN>;
@C = split / /,$C_temp;
chomp @C;
$B_i = 0;
@B = ();
while($B_i < $n){
   my $B_temp = <STDIN>;
   my @B_t = split / /,$B_temp;
   chomp @B_t;
   push @B,\@B_t;
   $B_i++;
}

# Write Your Code Here
for($i=0;$i<$n;$i++){
	for($j=0;$j<$m;$j++){
		print "$B[$i]->[$j]\t";
	}
	print "\n";
}
exit 0;
