module Sort where


quickSort :: Ord a => [a] -> [a]

quickSort [] = []
quickSort(head:rest) = smaller ++ [head] ++ larger
    where 
        smaller = [x | x <- rest , x < head]
        larger  = [x | x <- rest , x > head]