{-Frequency table-}
import Data.List.Split(splitOn)
import Data.List(sort)
import Data.Map.Strict(fromListWith, toList)



frequency xs = fromListWith (+) [(x, 1) | x <- xs]


main = do
    input <- getLine 
    let listinteger = map read $ splitOn " " input :: [Integer]
    let sortedlist = sort listinteger
    let frequencymap = frequency sortedlist
    let frequencylist = toList frequencymap
    sequence_ [putStrLn (show(a) ++ " " ++ show(b) ++ "\n") | (a,b) <- frequencylist]



    





