sub getfiledata {
    my($filename) = @_;
    use strict;
    use warnings;
    my @filedata = ();
    unless( open (GETFILEDATA,$filename) ) {
      print STDERR "Cannot open file \"$filename\"\n\n";
      exit;
     }
    @filedata = <GETFILEDATA>;
    close GETFILEDATA;
    return @filedata;
}
sub extract {
    my(@fasta) = @_;
    use strict;
    use warnings;
    my $seq = '';
    foreach my $line (@fasta) {
      if ($line =~ /^\s*$/) {
         next;
      } elsif ($line =~ /^\s*#/) {
         next;
      } elsif ($line =~ /^>/) {
      } else {
          $seq .=$line;
      }
    }
    return $seq;
}
sub printseq {
    my($seq,$length) = @_;
    use strict;
    use warnings;
    for (my $pos = 0;$pos < length ($seq);$pos += $length ) {
       print substr($seq,$pos,$length),"\n";
     }
}
1;
