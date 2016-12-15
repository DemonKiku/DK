#!/usr/bin/env perl -w
use strict;
my $dna = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA';
my $i;
my $mutant;
srand( time | $$);
$mutant = mutate($dna);
print "\nMutate DNA\n";
print "\nOriginal DNA\n";
print "$dna\n";
print "\nIt's mutant DNA\n";
print "$mutant\n";
print "\nThere are mutations:\n";
for ( $i = 0; $i < 10; ++$i ) {
    $mutant = mutate ($mutant);
    print "$mutant\n";
}
exit;


sub mutate {
    my ($DNA) = @_;
    my (@nucle) = ( 'A', 'C', 'G', 'T');
    my ($position) = randomposition($DNA);
    my ($newbase) = randomnucle(@nucle);
    substr($DNA,$position,1,$newbase);
    return $DNA;
}
sub randomelement {
    my (@array) = @_;
    return $array[ rand @array];
}
sub randomnucle {
    my (@nucle) = ('A','C','G','T');
    return randomelement(@nucle);
}
sub randomposition {
    my ($string) = @_;
    return int rand length $string;
}

