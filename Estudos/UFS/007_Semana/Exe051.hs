module Exe051 where

--Minha versao da funcao product
myProduct :: [Int] -> Int
myProduct [] = 1
myProduct (x:xs) = x * myProduct xs