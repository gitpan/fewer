
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'fewer',
                       'DISTNAME' => 'fewer',
                       'AUTHOR' => 'Ricardo SIGNES <rjbs@cpan.org>',
                       'ABSTRACT' => 'use fewer units of a countable resource',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100220',
                       'LICENSE' => 'perl',
                       'PREREQ_PM' => {
                                        'less' => '0.03',
                                        'ExtUtils::MakeMaker' => '6.11'
                                      }
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



