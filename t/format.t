use Test::Nginx::Socket 'no_plan';
use Cwd qw(cwd);

my $pwd = cwd();

our $HttpConfig = qq{
    lua_package_path "$pwd/lib/?.lua;;";
    #we hack the ngx.time:)
    init_by_lua '
        ngx.time = function()
            return 738892801
        end
    ';
};

repeat_each(1);
no_shuffle();
run_tests();

__DATA__
=== TEST 1: test format
--- http_config eval: $::HttpConfig

--- config
    location /t {
        content_by_lua '
            local rfc5424 = require("lib.resty.rfc5424")

            ngx.print(rfc5424.encode("LOCAL0", "INFO", "blackhole", "1234", "openresty", "happy coding"))
        ';
    }

--- request
GET /t

--- response_body
<134>Jun 01 00:00:01 blackhole openresty[1234]: happy coding

