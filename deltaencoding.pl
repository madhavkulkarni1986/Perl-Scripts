# Enter your code here. Read input from STDIN. Print output to STDOUT
my $l_temp = <STDIN>;
my @list = split(/ /,$L_temp);
chomp(@list);

my @newlist;
for(0..$#list){
   if($_==0){
      push(@newlist,$list[0])
         }
	    else{
	        push(@newlist,$list[$_]-$list[$_-1] )
		   }
		   }

		   for(0..$#newlist){
		      if($_==0){
		            print "$newlist[0]";
			       }
			          elsif($newlist[$_] > 127 || $newlist[$_] < -127){
				     print "-128 ";
				        print "$newlis[$_] ";
					   }
					      else{
					            print "$newlist[$_] ";
						       }
						          print;
							  }
