#!/usr/bin/perl

##########################################
# FileName: pascalsTriangle.pl
# Description: Generate PascalsTriangle
#
# CreatedBy: Kiran Babu Chinnam on 18-11-2018
# ModifiedBy: Kiran Babu Chinnam on 18-11-2018
##########################################

use strict;
use warnings;

print "enter a number for PascalsTriangle:";
chomp(my $n = <>);

die "*** $0  Usage ***\nenter a number for PascalsTriangle:<n>\n" if($n !~ /\d+/);

print "\n***result start***\n";
print "\nPascalsTriangle of given number $n:\n";


my @currLine = (1);

foreach my $row (1 .. $n - 1)
{
	print "1\n" if($row == 1);
	#adds adjucent values on previous line 
	my @add = map {$currLine[$_] + $currLine[$_ + 1]} 0 .. $row - 2;
	#adds 1s to adjucent values addition to gerenate current line 
	@currLine = (1, @add, 1);
	#prints the current line values space and new-line seperated 
	print join(" ", @currLine), "\n"; 
}
print "\n\n***result end***\n";