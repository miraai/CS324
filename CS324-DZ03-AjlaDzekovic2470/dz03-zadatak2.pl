my @numbers = (1..10);
my $i=0;
while ($i<=$#numbers) {
    print $numbers[$i]**2,"\n";
    $i++;
}