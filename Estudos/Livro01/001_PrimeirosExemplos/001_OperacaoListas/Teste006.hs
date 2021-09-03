module Teste006 where

--Pegar Index do elementro dentro da lista
findIndex :: [Int] -> Int -> Int 
findIndex x y = (!!) x y --maneira infixa
--findIndex x y = x !! y --maneira comum
