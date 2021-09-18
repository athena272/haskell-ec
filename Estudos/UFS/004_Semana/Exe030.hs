module Exe030 where

ehPar :: Int -> Bool
ehPar x = (x `mod` 2 == 0)

listaSerParser :: [Int] -> [Bool]
listaSerParser xs = [ehPar x | x <- xs]