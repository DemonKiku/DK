#!/usr/bin/env perl -w
use strict;
use enzyme;
my %rebase_hash = ();
my @file_data = ();
my $query = '';
my $dna = '';
my $recognition_site = '';
my $regexp = '';
my @locations = ();
@file_data = get_file_data("sample.dna");
$dna = extract_sequence_from_fasta_data(@file_data);
%rebase_hash = parseREBASE('bionet');
do {
   print "Search for the site:";
   $query = <STDIN>;
   chomp $query;
   if ( $query =~ /^\s*$/ ) {
        exit;
   }
   if ( exists $rebase_hash{$query}) {
      ($recognition_site,$regexp) = split( " ", $rebase_hash{$query});
      if (@locations) {
         print "Searching for $query $recognition_site $regexp\n";
         print "A restriction site for $query at locations:\n";
         print join(" ",@locations),"\n";
      }
      else {
         print "A enzyme $query id not in the DNA:\n";
      }
    }
    print "\n";
}until ( $query =~ /quit/);
exit;
