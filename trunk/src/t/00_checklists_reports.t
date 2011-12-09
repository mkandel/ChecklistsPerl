use warnings;
use strict;
use Test::More tests => 1;
# two of my favorite test modules - and their key methods.
#use Test::Differences;    # qw(eq_or_diff);
#use Test::Exception;      # qw(throws_ok)

# This is our class_under_test
use Checklists::Reports;
sub class_under_test { return 'Checklists::Reports'; }

#------------------
# the listing of 'tests to run' - allows well ordered testing.
test_isa_what();

#------------------
# each unique test in it's own sub:

sub test_isa_what {
    my $class  = class_under_test();
    my $object = $class->new();
    isa_ok( $object, $class );
    return;
}

# in case you want to have a simple way to build mock methods on the fly
###sub test_first_case {
###    my $class = class_under_test();
###    can_ok( $class, 'first_case' );
###    my $object = $class->new();
###    # note this ok() test is used as an illustration and will work until
###    # some real code is put into main()
###    {
###        no strict qw(refs);          ## no critic (ProhibitNoStrict)
###        no warnings qw(redefine);    ## no critic (ProhibitNoWarnings)
###
###        my ( $this, %params );
###
###        # we now know that we will reach the run() call.
###        my $method_name = 'Yahoo::CLI::run';
###        local *{$method_name} = sub { ( $this, %params ) = @_; return 0; };
###
###        my @args = qw(d g);
###        my $want = {
###            argv => [@args],
###            params => {
###                options => [qw( debug|d help|h pod|p )],
###                'app_name' => 'der_app_name',
###                'project_name' => 'der_project_name',
###                'common_config' => 'common',
###            },
###        };
###        local @ARGV = @args;
###
###        ok( $object->run() == 0, 'run() ok.' );
###
###        # Now to compare what the sensor picked up and what the
###        # the desired hash of values will look like
###        eq_or_diff( \%params, $want, 'run() correctly passes args.' );
###    }
###    return;
###}

# the end, and they all lived happily ever after.
