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
   	$laptop{$name}=$value;
   }
}

if(!keys %laptop){
	print "-1";
}
else{
my @lap=sort{$laptop{$a} <=> $laptop{$b}} keys(%laptop);
my @vals = @laptop{@lap};
print "$lap[0]\n";
}
