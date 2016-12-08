#!/usr/bin/env perl -w
use strict;
my @i = ('1','2','3');
my @j = ('a','b','c');
print "i=@i\n";
print "j=@j\n";
reference(\@i,\@j);
print "i=@i\n";
print "j=@j\n";
sub reference {
    my ($i,$j) = @_;
    print "i=@$i\n";
    print "j=@$j\n";
    push (@$i,'3');
    shift (@$j);
}

