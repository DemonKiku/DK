sub makerandom {
    my ( $min ,$max,$size) = @_;
    my $length;
    my $dna;
    my @set;
    for ( my $i = 0; $i < $size ; ++$i) {
         $length = randomlength($min,$max);
         $dna = makerandomDNA($length);
         push( @set, $dna);
     }
     return @set;
}
1;

