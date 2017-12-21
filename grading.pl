#!/usr/bin/perl

sub solve {
@grades=@_;
foreach my $grad(@grades){
     $mod=$grad%5;
        if($grad < 38){
               push(@newgrades,$grad);
        }
        elsif(($grad + 1)%5 == 0){
                push(@newgrades,$grad+1);
        }
        elsif(($grad + 2)%5 ==0){
                push(@newgrades,$grad+2);
        }
        else{
                push(@newgrades,$grad);
        }
  }
return @newgrades;
}

$n = <STDIN>;
chomp $n;
@grades = ();
while(@grades < $n){
   my $grades_temp = <STDIN>;
     chomp $grades_temp;
     push @grades,$grades_temp;
}
@result = solve(@grades);
print join("\n", @result);
