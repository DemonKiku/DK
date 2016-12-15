sub makerandomDNA {
    my ($length) = @_;
    my $dna;
    for ( my $i = 0; $i < $length; ++$i) {
        $dna .= randomnucle();
    }
    return $dna;
}
1;

