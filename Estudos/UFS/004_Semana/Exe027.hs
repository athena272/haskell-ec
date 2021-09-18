module Exe027 where

--Dado dois inteiros elabore uma função para retornar o máximo entre eles e o número de vezes que ele ocorre

maxOcorre :: Int -> Int -> (Int, String)
maxOcorre x y
    | x == y = (x, "O numero " ++ show x ++ " ocorre 2 vezes")
    | otherwise = (maior, "O numero " ++ show maior ++ " ocorre 1 vez")
    where 
        maior = (max x y)