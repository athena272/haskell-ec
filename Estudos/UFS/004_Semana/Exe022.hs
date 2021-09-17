module Exe022 where

--Suponha uma função para adicionar os elementos de um par.]
somarPar :: (Int, Int) -> Int
somarPar (x,y) = x + y

--Usando casamento de padrão poderia escrever
somarPar' :: (Int, Int) -> Int
somarPar' (x,0) = x
somarPar' (0,y) = y
somarPar' (x,y) = x + y