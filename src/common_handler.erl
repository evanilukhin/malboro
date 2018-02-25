-module(common_handler).
-behavior(cowboy_handler).

-export([init/2]).

init(Req0, State) ->
	Req = cowboy_req:reply(200,
				#{"content-type" => "text/plain"},
        "", Req0),
	{ok, Body, _} = cowboy_req:read_body(Req0),
	{DecodedBody} = jiffy:decode(Body),
	NewBody = lists:append(DecodedBody, [{<<"malboro">>, timestamp()}]),
	io:fwrite("~s~n", [jiffy:encode({NewBody})]),
	{ok, Req, State}.

% return list with current timestamp for writing through io:fwrite/1
timestamp() ->
	{_,_, Micro} = Now = os:timestamp(),
	{_, {Hours, Minutes, Seconds}} = calendar:now_to_universal_time(Now),
	Formatted = io_lib:format("~2..0b:~2..0b:~2..0b.~6..0b",[Hours, Minutes, Seconds, Micro]),
	erlang:iolist_to_binary(Formatted).
