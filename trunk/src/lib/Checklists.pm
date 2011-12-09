#------------------------------------------------------------------------------
# $Id: Checklists.pm 335396 2011-12-02 20:28:03Z mkandel $
# $HeadURL: svn+ssh://svn.corp.yahoo.com/yahoo/mail/capdel/sandbox/mkandel/perl_checklists/trunk/src/lib/Checklists.pm $
#------------------------------------------------------------------------------
package Checklists;

## Pragmas
use warnings;
use strict;

## General libraries
use Carp;
use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;

## Remove this once this has been packaged
use lib '/Users/mkandel/src/svn/capdel/sandbox/mkandel/perl_checklists/trunk/src/lib/';
## Internal libraries
use Checklists::DB;

## Unbuffered output
local $| = 1;

=head1 NAME

Checklists - web-based, database driven, shareable checklists.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

    use Checklists;

    my $foo = Checklists->new();
    ...

=head1 DESCRIPTION

In an effort to reduce time to deliver for Yahoo! Capacity Delivery having
a web-based, database driven checklist application will reduce said time to
deliver by minimizing pain when handing off installs from one engineer to
another.

=cut

=head1 EXPORT

new()

=head1 METHODS

=head2 new(%options)

    FUNCTION: Creates a Checklists object

   ARGUMENTS: none or a hashref of arg pairs.
              Currently the only valid arg is 'debug', enable it
              by passing { debug => 1 } to new().
              
              Ex: my $db = Yahoo::Capdel::CMTDB->new( { debug => 1 } )

              Any other arguments (besides debug) will be silently ignored.
           
     RETURNS: a blessed reference to a Checklists object

=cut

sub new {
    my ($class,%params) = @_;
    return bless \%params, $class;
}

=head2 add_checklist( )

    FUNCTION: creates a new checklist

   ARGUMENTS: Unix user ID for the creator, template ID for which template to
              use for the new checklist

     RETURNS: the checklist ID for the newly created Checklists

=cut

sub add_checklist {
}

#=head2 update_checklist( )
#
#    FUNCTION: creates a new checklist
#
#   ARGUMENTS: Unix user ID for the creator
#
#     RETURNS: the checklist ID for the newly created Checklists
#
#=cut
#
#sub update_checklist {
#    my $cid = shift or croak "update_checklist: Must pass in checklist ID!\n";
#}

=head2 change_checklist_owner( )

    FUNCTION: changes the ownership of a checklist

   ARGUMENTS: checklist ID, user ID for the new owner

     RETURNS: 1 for success, croak's on error

=cut

sub change_checklist_owner {
    my $cid = shift
        or croak "change_checklist_owner: Must pass in checklist ID!\n";
    my $new_owner = shift
        or croak "change_checklist_owner: Must pass in new owner user ID!\n";

    ## Do the change

    ## If we got this far, return success
    return 1;
}

=head2 add_note_to_checklist( )

    FUNCTION: adds a text note to a checklist

   ARGUMENTS: checklist ID, text of the note to add

     RETURNS: 1 for success, croak's on error

=cut

sub add_note_to_checklist {
    my $cid = shift
        or croak "add_note_to_checklist: Must pass in checklist ID!\n";
    my $note = shift
        or croak "add_note_to_checklist: Must pass in text for the note!\n";
    ## Do the change

    ## If we got this far, return success
    return 1;
}

=head1 AUTHOR

mkandel, C<< <mkandel at yahoo-inc.com> >>


=head1 COPYRIGHT & LICENSE

Copyright 2011 Yahoo Inc.

This Is Restricted Software Developed for Yahoo Inc.
Copyright (C) 2011 Yahoo Inc. All Rights Reserve.


The Software shall be used for Good, not Evil.

=cut

1; # End of Checklists
