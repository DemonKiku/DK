#!/usr/bin/env perl -w
my $dna = 'AAAGGGGTTTTCCTTAAGACC';
my @dna;
my $flag;
my $previous = '';
my $subsequence = '';
if (@ARGV) {
   my $subsequence = $ARGV[0];
}
else {
   $subsequence = 'TA';
}
my $base1 = substr( $subsequence,0 ,1);
my $base2 = substr( $subsequence,1 ,1);
@dna = split ( '',$dna );
foreach (@dna) {
   if ($flag) {
      print;
      next;
   }
   elsif ( $previous eq $base1) {
      if ( /$base2/) {
        print $base1,$base2;
        $flag = 1;
      }
   }
   $previous = $_;
}
print "\n";
exit;

