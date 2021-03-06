
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.019.
use strict;
use warnings;

use 5.008001;

use ExtUtils::MakeMaker 6.30;

use File::ShareDir::Install;
$File::ShareDir::Install::INCLUDE_DOTFILES = 1;
$File::ShareDir::Install::INCLUDE_DOTDIRS = 1;
install_share dist => "share";


my %WriteMakefileArgs = (
  "ABSTRACT" => "Relaxed JSON with a little bit of YAML",
  "AUTHOR" => "Ingy d\x{f6}t Net <ingy\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "File::ShareDir::Install" => "0.06"
  },
  "DISTNAME" => "JSONY",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "JSONY",
  "PREREQ_PM" => {
    "Pegex" => "0.50",
    "boolean" => "0.31"
  },
  "TEST_REQUIRES" => {
    "JSON" => "2.90",
    "YAML" => "0.90"
  },
  "VERSION" => "0.1.13",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "JSON" => "2.90",
  "Pegex" => "0.50",
  "YAML" => "0.90",
  "boolean" => "0.31"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);

{
package
MY;
use File::ShareDir::Install qw(postamble);
}


