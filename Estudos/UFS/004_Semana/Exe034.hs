module Exe034 where

ehPar :: Int -> Bool
ehPar x = (x `mod` 2 == 0)

todosPares :: [Int] -> Bool
todosPares xs = (xs == [x | x <- xs, ehPar x])