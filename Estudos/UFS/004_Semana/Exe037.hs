module Exe037 where

ehPar :: Int -> Bool
ehPar x = (x `mod` 2 == 0)

imparesTriplicados :: [Int] -> [Int]
imparesTriplicados lista = [elemento * 3 | elemento <- lista, (ehPar elemento) == False]