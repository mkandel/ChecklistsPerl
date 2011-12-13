#------------------------------------------------------------------------------
# $Id$
# $HeadURL$
#------------------------------------------------------------------------------
package Checklists::DB;

use warnings;
use strict;

=head1 NAME

Checklists::DB - Database API for Checklists

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

Provides an API for database access for Checklists

    use Checklists::DB;

    my $db = Checklists::DB->new();
    ...

=head1 DESCRIPTION

For the Checklists web application, database conectivity is needed, this module
provides that connectivity.  This is an sqlite database, could be ported to 
MySQL if that becomes necessary.

=cut

=head1 EXPORT

=head1 METHODS

=head2 new(%options)

=cut

## Some things we'll need later:
use Carp;
use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

use DBD::SQLite;

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

Copyright 2011 Yahoo Inc.

This Is Restricted Software Developed for Yahoo Inc.
Copyright (C) 2011 Yahoo Inc. All Rights Reserve.


The Software shall be used for Good, not Evil.

=cut

1; # End of Checklists::DB
