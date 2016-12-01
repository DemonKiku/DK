#!/usr/bin/env perl -w
print "enter your data:\n";
$dna = <STDIN>;
chomp $dna;
unless (open(DNAFILE,$dna)) {
  print "No such file.\n";
  exit;
}
@dna = <DNAFILE>;
close DNAFILE;
$DNA = join ('',@dna);
$DNA =~ s/\s//g;
@dna = split ('',$DNA);
$countA = 0;
$countC = 0;
$countT = 0;
$countG = 0;
$error = 0;
while ($DNA =~ /a/ig)   {$countA++}
while ($DNA =~ /c/ig)   {$countC++}
while ($DNA =~ /t/ig)   {$countT++}
while ($DNA =~ /g/ig)   {$countG++}
while ($DNA =~ /[^acgt]/ig)   {$error++}
print "A = $countA,C = $countC,T = $countT,G = $countG,error = $error\n";
exit;
