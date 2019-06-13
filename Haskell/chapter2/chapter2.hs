module Learn where 


sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello," ++ x ++ "!")

-- Exercise 1
half x = x / 2

square x  =  x * x

compose'' x =  half x + square x


-- Exercise 2
area x = pi * x * x




x = 10 * 5 + y

my = x  + y

y = 3