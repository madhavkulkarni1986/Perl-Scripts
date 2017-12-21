#!/usr/bin/perl -w
use strict;

sub rangeOverlap(){

  my @s_index;
  my @e_index;
  my @combined;
  my $n=<STDIN>;
  chomp($n);

  while($n>0){
	my $t_val=<STDIN>;
	my($s_i,$e_i) = split / /,$t_val;
	chomp($s_i);
	chomp($e_i);
	push(@s_index,$s_i);
	push(@e_index,$e_i);
	push(@combined,$s_i);
	push(@combined,$e_i);

	$n--;
  }
  @s_index=sort{$a<=>$b} @s_index;
  @e_index=sort{$a<=>$b} @e_index;
  @combined=sort{$a<=>$b} @combined;

  print "Combined: @combined\ns_index: @s_index\ne_index: @e_index\n";
  my $it=0;
  my(@s_f,@e_f);
  while(@s_index && @e_index){
  	my $i=shift @s_index;
	my $j=shift @e_index;
	if($i == $combined[$it] && $j == $combined[$it+1]){
		push(@s_f,$combined[$it]);
		push(@e_f,$combined[$it+1]);
		$it+=2;
	}
	else{
		push(@s_f,$combined[$it]);
		push(@e_f,$combined[$it+3]);
		$it+=4;
		shift @s_index;
		shift @e_index;
	}
	print "s_f: @s_f\ne_f: @e_f\n";
  }
  print @s_f . "\n";
  while(@s_f && @e_f){
  	my $i=shift @s_f;
  	my $j=shift @e_f;
  	print "$i $j\n";
  }

}

rangeOverlap();
exit 0;
