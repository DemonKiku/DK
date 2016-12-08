#!/usr/bin/env perl -w
use strict;
my ($USAGE) = "$0 DNA\n\n";
unless (@ARGV) {
  print $USAGE;
  exit;
}
my ($dna) = $ARGV[0];
my ($numG) = countG($dna);
print "\nThe DNA has $numG G in it!\n\n";
sub countG {
  my ($dna) = @_;
  my ($count) = 0;
  $count = ( $dna =~ tr/Gg// );
  return $count;
}

