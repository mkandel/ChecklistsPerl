#!/usr/local/bin/perl
###############################################################################
# $Id:$
# $HeadURL:$
#
# Copyright (c) 2011 Yahoo!, Inc.
#
# create_tables.pl - create the SQLite tables for Checklists
#
###############################################################################

=head1 NAME

create_tables.pl - create the SQLite tables for Checklists

=head1 SYNOPSIS

create_tables.pl [options]
			
=head1 OPTIONS

=over

=item B<--help|-h>

Print this usage information and exit.

=item B<--debug|-d>

Enables debugging output

=back
		 
=head1 DESCRIPTION

C<create_tables.pl> creates the SQLite tables for Checklists

=cut

=head1 AUTHOR

Marc Kandel C<< <mkandel at yahoo-inc.com> >>

=head1 LICENSE

Copyright 2011 Yahoo!, Inc.

=cut
use strict;
use warnings;

use Carp;
use Getopt::Long;
Getopt::Long::Configure ("bundling");
use Data::Dumper;
# Some Data::Dumper settings:
local $Data::Dumper::Useqq  = 1;
local $Data::Dumper::Indent = 3;
use Pod::Usage;

use DBI;
#use DBD::SQLite;
my $dbfile = 'schema.sql';
my $dbh = DBI->connect("dbi:SQLite:dbname=$dbfile","","");

my $help;
my $mydebug = 0;

GetOptions(
    "help|h"         => \$help,
    "debug|d"        => \$mydebug,
);

pod2usage( 1 ) if $help;

my $prog = $0;
$prog =~ s/^.*\///;

__END__
