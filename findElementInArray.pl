# Complete the function below.


sub findNumber {
	my ($a,$k)=@_;
	    print join ',',@$a;
	        print "\n$k\n";
		    if(grep{$_ eq $k} @$a){ 
		           return "YES";
			       }
			           else{
				         return "NO";
					     }
}

open(my $fh , '>',$ENV{'OUTPUT_PATH'});
$_arr_size = 0;
$_arr_size = <>;
my @_arr;
while (@_arr < $_arr_size) {
    my $_arr_temp = <>;
        chomp($_arr_temp);
	    push @_arr, $_arr_temp;
	    }

	    $_k = <>;
	    chomp($_k);


	    $res = findNumber(\@_arr, $_k);
	    print "$res\n";
	    print $fh "$res\n";


	    close $fh;

