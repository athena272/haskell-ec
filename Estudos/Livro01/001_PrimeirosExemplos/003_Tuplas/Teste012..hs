module Teste012 where

--Testando funções com Tuplas
foo :: Char -> Int -> (Int, String)
foo x y = (y + 9, x:[x])
