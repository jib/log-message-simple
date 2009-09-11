use ExtUtils::MakeMaker;
use strict;

my @LICENSE;
push @LICENSE, 'LICENSE', 'perl' if $ExtUtils::MakeMaker::VERSION > 6.30;

WriteMakefile (
    NAME            => 'Log::Message::Simple',
    VERSION_FROM    => 'lib/Log/Message/Simple.pm', # finds $VERSION
    dist            => { COMPRESS => 'gzip -9f', SUFFIX => 'gz' },
    PREREQ_PM       => {    'Carp'          => 0,
                            'Test::More'    => 0,
                            'Log::Message'  => 0,
                    },
    INSTALLDIRS     => ( $] >= 5.009005 ? 'perl' : 'site' ),
    AUTHOR          => 'Jos Boumans <kane[at]cpan.org>',
	  ABSTRACT        => 'Simplified interface to Log::Message',
    @LICENSE,
);             
