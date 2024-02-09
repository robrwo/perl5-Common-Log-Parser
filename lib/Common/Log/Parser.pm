package Common::Log::Parser;

use v5.14;
use warnings;

use Exporter qw( import );

our @EXPORT_OK = qw( split_log_line );

sub split_log_line {
    my ($line) = @_;
    my @matches = $line =~ /(?: \A | [ ]) ( - | \[ [^]]+ \] | " [^"]* " | \S+ ) /agx;
    return \@matches;
}

1;
