#!/usr/bin/env perl -w
print "Please enter your data:\n";
$pro =  <STDIN>;
chomp $pro;
unless (open(PROTEINFILE,$pro)) {
  print "No such file.\n";
  exit;
}
@pro = <PROTEINFILE>;
close PROTEINFILE;
$p = join ('',@pro);
$p =~ s/\s//g;
do {
  print "Please enter a motif to search:\n";
  $motif = <STDIN>;
  chomp $motif;
  if ($p =~ /$motif/ ) {
    print "got it.\n";
 }
  else {
    print "error.\n";
  }
} until ($motif =~ /^\s*$/ );
exit;

