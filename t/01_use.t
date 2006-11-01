use Test::More 'no_plan';
use strict;

my $Class = 'Log::Message::Simple';

use_ok( $Class );

diag "Testing $Class version " . $Class->VERSION;
