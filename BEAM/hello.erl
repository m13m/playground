-module(hello).
-export([hello/0]).
-define(GREETING, "Hello").


hello() ->
	io:format(?GREETING).

