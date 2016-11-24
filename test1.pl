#!/usr/bin/env perl -w
@base = ('A', 'C', 'T', 'G');
print $base[0],"\n";
print @base,"\n";
$b = shift @base;
print @base, "\n";
print $b,"\n";
push (@base,$b);
print @base,"\n";
print scalar @base, "\n";
splice ( @base, 3, 0, "U");
print @base, "\n";
