module Teste007 where

--Adiciona um elemento ao começo da lista informada
addElemento :: Int -> [Int] -> [Int]
addElemento x y = (:) x y --maneira infixa
--addElemento x y = x : y --maneira comum