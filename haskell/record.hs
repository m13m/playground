module Main where

data Person = MkPerson {
    name :: String
   ,age :: Int
}  
 
 {-Record clash because we cannot have same fields 
 because each of these fields converted into a function multiple decleration error
 -}

data Emp = MkEmp {
    name :: String
    ,age :: Int
}


main = putStrLn "Hello World"