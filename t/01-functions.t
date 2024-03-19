#!/usr/bin/env perl
use strict;
use warnings;

use Test::More;
use Test::Exception;

use_ok 'Date::Holidays::Adapter::USA';

lives_ok { Date::Holidays::Adapter::USA::foo(666) }
    'lives through foo()';

done_testing();
