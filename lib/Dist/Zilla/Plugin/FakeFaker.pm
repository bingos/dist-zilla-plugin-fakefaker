package Dist::Zilla::Plugin::FakeFaker;

#ABSTRACT: Because sometimes you just have to fake it

use Moose;
extends qw[Dist::Zilla::Plugin::MakeMaker];

sub setup_installer {
  return;
}

__PACKAGE__->meta->make_immutable;
no Moose;

q[When Harry Met Sally];

=pod

=head1 SYNOPSIS

  # in dist.ini

  [FakeFaker]

=head1 DESCRIPTION

Dist::Zilla::Plugin::FakeFaker is a L<Dist::Zilla> plugin for those situations where one has
already has a C<Makefile.PL> file of one's own that has been lovingly handcrafted to do funky
things and one wishes to C<leverage> the power of L<Dist::Zilla>.

Instead of specifying C<[MakeMaker]> in one's C<dist.ini>, just specify C<[FakeFaker]> and your
C<Makefile.PL> will be used.

=head1 METHODS

=over

=item C<setup_installer>

This is basically a no-op and merely returns without creating a C<Makefile.PL>.

=back

=cut
