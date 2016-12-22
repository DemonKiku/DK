#!/usr/bin/env perl -w
use strict;
use warnings;
use getfiledata;

my @file_data = ();
my $dna = '';
@file_data = getfiledata("sample.dna");
$dna = extract(@file_data);
printseq($dna,25);
exit;

