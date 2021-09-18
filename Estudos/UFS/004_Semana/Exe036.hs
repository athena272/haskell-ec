module Exe036 where

ehPar :: Int -> Bool
ehPar x = (x `mod` 2 == 0)

todosImpares :: [Int] -> Bool
todosImpares lista = (lista == [elemento | elemento <- lista, (ehPar elemento) == False])