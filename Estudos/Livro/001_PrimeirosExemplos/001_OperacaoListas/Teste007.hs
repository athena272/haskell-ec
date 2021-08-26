module Teste007 where

addElemento :: Int -> [Int] -> [Int]
addElemento x y = (:) x y --maneira infixa
--addElemento x y = x : y --maneira comum