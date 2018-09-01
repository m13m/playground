module Main where


factorial 0 = 1
factorial 1 = 1

factorial n = n * factorial(n-1)


{-factorial n = if n < 2 then 1 else n * factorial (n-1)-}
main = putStr(show(factorial 12))

