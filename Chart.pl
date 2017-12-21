use Chart::Plot; 
my $img = Chart::Plot->new; 
my @data = qw( 10 11 11 12 12 13 13 14 14 15);
$img->setData (\@data);
    
# draw circles around each data point, diameter 15 pixels
my $gd = $img->getGDobject;
my $blue = $gd->colorAllocate(0,0,255); # or use $img's blue 
my ($px,$py); 
for (my $i=0; $i<$#data; $i+=2) {
  ($px,$py) = $img->data2pxl ($data[$i], $data[$i+1]);
  $gd->arc($px,$py,15,15,0,360,$blue);
}

# draw the rest of the chart, and print it 
open (OUT,">plot.gif"); 
binmode OUT; 
print OUT $img->draw(); 

foreach(@INC)
{
	print "$_\n";
}
close OUT; 
