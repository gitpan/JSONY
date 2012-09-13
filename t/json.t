use TestML -run,
    -bridge => 't::TestML_JSONY';
# $Pegex::Parser::Debug = 1;

__DATA__
%TestML 1.0

# Test various json streams, to make sure jsony can parse it properly.
*json.jsony_decode.yaml == *json.json_decode.yaml;

=== Various Numbers
--- json: [1,-2,3,4.5,67,0.8e-9]

=== Object with no space
--- json: {"a":"b","c":{"d":"e"},"f":["g","h"],"i":[{},[],[[]]]}
