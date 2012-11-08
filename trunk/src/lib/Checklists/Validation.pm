package Checklists::Validation;

use warnings;
use strict;

=head1 NAME

Checklists::Validation - The great new Checklists::Validation!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Checklists::Validation;

    my $foo = Checklists::Validation->new();
    ...

=head1 DESCRIPTION

Write a quick pitch here.

Checklists::Validationsolves...

=cut

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 METHODS

=head2 new(%options)

=cut

sub new {
    my ($class,%params) = @_;
    return bless \%params, $class;
}

=head2 method_one( )

=cut

sub method_one {
}

=head2 method_two( )

=cut

sub method_two {
}

=head1 AUTHOR

mkandel, C<< <mkandel at yahoo-inc.com> >>


=head1 COPYRIGHT & LICENSE

Copyright 2011 marc

This Is Restricted Software Developed for marc
Copyright (C) 2011 marc All Rights Reserve.


The Software shall be used for Good, not Evil.

=cut

1; # End of Checklists::Validation
