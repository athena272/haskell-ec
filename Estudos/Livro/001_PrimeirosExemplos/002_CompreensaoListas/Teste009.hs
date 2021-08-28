module Teste009 where

--Dobrar valores dentro da lista
dobrarVrLista :: [Int] -> [Int]
dobrarVrLista xs = [2 * x | x <- xs]
