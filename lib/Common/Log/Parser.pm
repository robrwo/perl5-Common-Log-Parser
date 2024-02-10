package Common::Log::Parser;

# ABSTRACT: Parse the common log format lines used by Apache

use v5.14;
use warnings;

use Exporter 5.57 qw( import );

our $VERSION = 'v0.1.1';

our @EXPORT_OK = qw( split_log_line );

=head1 SYNOPSIS

  use Common::Log::Parser qw( split_log_line );

  my $columns = split_log_line($line);

=head1 DESCRIPTION

This module provides a simple function to parse common log format lines, such as those used by Apache.

=head1 prepend:EXPORTS

None by default.

=cut

sub split_log_line {

=export split_log_line

  my $columns = split_log_line($line);

This function simply parses the log file and returns an array reference of the different columns.

It does not attempt to parse or unescape the contents. Surrounding brackets or quotes are not removed.

=cut

    my ($line) = @_;
    my @matches = $line =~ /(?: \A | [ ]) ( - | \[ [^]]+ \] | " (?:\\.|[^"])* " | \S+ ) /agx;
    return \@matches;
}

1;

=head1 SEE ALSO

=over

=item *

L<Apache::Log::Parser>

=item *

L<Apache::ParseLog>

=item *

L<ApacheLog::Parser>

=item *

L<Regexp::Log::Common>

=back

=head1 append:AUTHOR

The initial development of this module was partially supported by Science Photo Library L<https://www.sciencephoto.com>.

=cut
