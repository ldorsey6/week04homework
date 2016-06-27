#!/usr/bin/perl

use strict;
use warnings;

#Write a simple program with a hard-coded hash of arrays. The program should print out the hash of arrays when run.

my $file = "./q1_output";
open( my $OUT , '>' , $file ) or die( "Can't open $file ($!)" );

my %foods_hash = (
	'veggies' => [ 'cucumbers' , 'corn' , 'carrots' ],
	'fruits' => [ 'apple' , 'orange' , 'pear' ],
	'dessert' => [ 'cake' , 'brownie' , 'icecream' ],
);

foreach my $type ( keys %foods_hash ) {
	print "Types of $type:  ";
	print $OUT "Types of $type:  ";
	foreach ( @{$foods_hash{$type}} ) {
		print "$_ ";
		print $OUT "$_ ";
	}
	print "\n";
	print $OUT "\n";
}