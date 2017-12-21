#!/usr/bin/perl -w
# Enter your code here. Read input from STDIN. Print output to STDOUT
my @cor;
my ($sumr,$sums,$sumo)=0;
for my $n(0..5){
   my $tmp = <STDIN>;
      @cor = split(/ /,$tmp);
         if($cor[0] < 0 || $cor[1] < 0 || $cor[2] < 0 || $cor[3] < 0){$sumo+=1;}
	    elsif($cor[0]==$cor[1] && $cor[0]==$cor[2] && $cor[0]==$cor[3]){$sums+=1;}
	       elsif($cor[0]==$cor[2] && $cor[1]==$cor[3]){$sumr+=1;}
	          else{$sumo+=1;}
		  }
		  print "$sums $sumr $sumo";
