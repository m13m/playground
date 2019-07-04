-module (fizzbuzz).
-export ([fizzbuzz/1, test/1]).


fizzbuzz([]) -> io:format("");

fizzbuzz([H | T]) -> 
    case {H rem 3, H rem 5} of 
        {0, 0} -> io:format("FizzBuzz\n");
        {0, _} -> io:format("Fizz\n");
        {_, 0} -> io:format("Buzz\n");
        _ -> io:format("")
        
    end,
    fizzbuzz(T).


test(N) -> 
    fizzbuzz(lists:seq(1,N)).