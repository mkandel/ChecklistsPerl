use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Checklists',
    license             => 'restrictive',
    dist_author         => q{mkandel <mkandel@yahoo-inc.com>},
    dist_version_from   => 'lib/Checklists.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Checklists-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
