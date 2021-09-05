module Exe014 where
--Faça uma função que reveba um inteiro e retorne uma tupla com ols seu dobro na primeira coordenada, o seu triplo na segunda, o quádruplo na terceira e o quintuplo na quarta

getIntMulti :: Int -> (Int, Int, Int, Int)
getIntMulti x = (x * 2, x * 3, x * 4, x * 5)