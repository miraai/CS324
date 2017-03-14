foreach $number (1 .. 10) {
  $mul = $number * $number;
  print "$mul \n";
}

print "\n";

my @numbers = (1..10);
my $i=0;
while ($i<=$#numbers) {
    print $numbers[$i]**2,"\n";
    $i++;
}


