-file("hello.erl", 1).

-module(hello).

-export([hello/0]).

hello() ->
    io:format("Hello").



