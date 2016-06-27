#!/usr/bin/perl

use strict;
use warnings;

use Test::Simple tests => 2;

use randomDNAgeneration('random');

my $file = "./q4_output";
open( my $OUT , '>' , $file ) or die( "Can't open $file ($!)" );

my $len = 50;

my $dna = random($OUT, $len);

ok( length( $dna ) == $len , "string length checks" );
ok( $dna =~ /^[ACGT]{$len}$/i , "string composition checks" );