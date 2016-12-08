#!/usr/bin/env perl -w
$dna = 'GAGTCCCTA';
$longer = addACGT($dna);
print "I add ACGT to $dna and got $longer\n\n";
exit;
sub addACGT {
   my ($dna) = @_;
   $dna .= 'ACGT';
   return $dna;
}

