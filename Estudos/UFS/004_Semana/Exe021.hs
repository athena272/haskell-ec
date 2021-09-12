module Exe021 where

qualMaiorTupla :: Int -> Int -> (Int, Int)
qualMaiorTupla a b 
    | a > b = (a, b)
    | otherwise = (b, a)