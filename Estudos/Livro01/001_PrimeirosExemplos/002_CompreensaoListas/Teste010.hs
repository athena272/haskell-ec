module Teste010 where

--Dobrar valores dentro da lista e somar mais 1, menos o  5
dobrarMaisUm :: [Int] -> [Int]
dobrarMaisUm xs = [2 * x + 1 | x <- xs, x /=5]
