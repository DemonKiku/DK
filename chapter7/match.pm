sub match {
    my ( $string1, $string2 ) = @_;
    my ($length) = length($string1);
    my ($position);
    my ($count) = 0;
    for ( $position = 0; $position < $length ; ++$position) {
        if (
            substr( $string1, $position, 1) eq substr($string2,$position, 1)
           )
           {
              ++$count;
           }
    }
    return $count / $length;
}
1;

