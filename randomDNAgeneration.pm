package randomDNAgeneration;

#Place the function from last week's "two argument" random DNA generation question into a module. The module should export the function.

use strict;
use warnings;

use Exporter 'import';
our @EXPORT_OK = ( "random" );

sub random{
	my ( @args ) = ( @_ );
	my $OUTPUT = $args[0];
	my $size = $args[1];
	if ( length(@args) > 2 ) {
		my $random_length = $args[2];
		chomp $random_length;
		if ( $random_length eq "yes" ) {
			$size = int( rand $size ) + 1;
		}
	}
	
	my @list = ( 'A' , 'T' , 'C' , 'G' );
	my $i = 0;
	my $sequence = '';
	while ( $i < $size ) {
		my $choice = int( rand @list );
		$sequence .=  $list[$choice];
		$i++;
	}
	print "$sequence";
	print $OUTPUT "$sequence";
	print "\n";
	return $sequence
}

# use it
1;