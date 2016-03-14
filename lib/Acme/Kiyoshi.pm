package Acme::Kiyoshi;

=head1 NAME

Acme::Kiyoshi - ZUN ZUN ZUN ZUN DOKO KI.YO.SHI!

=head1 SYNOPSIS

  perl -MAcme::Kiyoshi -E 'kiyoshi';

=head1 DESCRIPTION

Acme::Kiyoshi is singing "ZUN ZUN ZUN ZUN DOKO KI!YO!SHI!"

=cut

use strict;
use warnings;

use Exporter 'import';
use List::Util qw/shuffle/;

our @EXPORT = qw(kiyoshi);
our @PATTERN   = qw/ZUN DOKO/;
our @EXPECT    = qw/ZUN ZUN ZUN ZUN DOKO/;

sub kiyoshi {
    my @list;
    while(1){
        print sprintf("%s ", my $pick = shuffle @PATTERN);
        push @list, $pick;
        last if join('', @list) eq join('', @EXPECT);
        shift @list if scalar @list >= 5;
    }
    return print "KI.YO.SHI!\n";
}


1;

__END__

=head1 AUTHOR

likkradyus E<lt>perl {at} li.que.jpE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
