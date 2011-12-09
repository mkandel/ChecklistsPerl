#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Checklists' ) || print "Bail out!
";
}

diag( "Testing Checklists $Checklists::VERSION, Perl $], $^X" );
