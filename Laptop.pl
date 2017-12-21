#!/usr/bin/perl

my %laptop =();
$n = <STDIN>;
chomp $n;
for my $a0 (0..$n-1){
   $name_temp = <STDIN>;
   @name_arr = split / /,$name_temp;
   $name = $name_arr[0]; 
   chomp $name;
   $value = $name_arr[1];
   chomp $value;
   my $v=$value;
   $v =~ s/4/F/g;
   $v =~ s/7/S/g;
   if(!($v =~ /(\d+)/))
   {
   	push @{$laptop{$value}},$name;
   }
}

if(!keys %laptop){
	print "-1";
}
else{
	foreach(sort keys %laptop)
	{
		my @lap = @{$laptop{$_}};
		print join "\n", sort @lap;
		print "\n";
		exit;
	}
}
