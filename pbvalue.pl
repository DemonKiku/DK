#!/usr/bin/env perl -w
use strict;
my $i = 2;
simple_sub($i);
print "In main program,\$i equals $i\n\n";
sub simple_sub{
   my ($i) = @_;
   $i += 100;
   print "In this case,\$i equals $i\n\n";
}

