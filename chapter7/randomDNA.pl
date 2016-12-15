#!/usr/bin/env perl -w
use strict;
my $size = 12;
my $max = 30;
my $min = 15;
my @randomdna = ();
srand( time | $$);
@randomdna = makerandomdna($min,$max,$size);
print "Here is an array of $size randomly generated DNA sequence\n";
print "With lengths between $min and $max:\n";
foreach my $dna (@randomdna) {
        print "$dna\n";
}
print "\n";
exit;
sub makerandomdna {
    my ( $min, $max, $size) = @_;
    my $length;
    my $dna;
    my @set;
    for (my $i = 0; $i < $size; ++$i) {
       $length = randomlength ($min,$max);
       $dna = makerandomDNA($length);
       push (@set,$dna);
    }
    return @set;
}

sub randomlength {
    my ($minlength, $maxlength) = @_;
    return ( int( rand ( $maxlength - $minlength + 1 )) + $minlength);
}
 
sub makerandomDNA {
    my ($length) = @_;
    my $dna;
    for ( my $i = 0; $i < $length; ++$i) {
    $dna .=randomnucle();
    }
    return $dna;
}

sub randomnucle {
    my (@nucle) = ( 'A', 'C', 'G', 'T');
    return randomelement(@nucle);
}

sub randomelement {
    my (@array) = @_;
    return $array[rand @array];
}

