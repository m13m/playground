module Main where

import Equal

data Value = Value { con :: Int }


instance Equal Value where
    eq a b = con a == con b 



main = putStrLn "Hello Worl!"