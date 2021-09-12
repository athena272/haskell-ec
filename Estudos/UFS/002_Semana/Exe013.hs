module Exe013 where

--Dados dois números, determine o menor deles.
menorDeDois :: Int -> Int -> Int
menorDeDois value1 value2 
    | value1 < value2 = value1 
    | otherwise = value2

--Dados três números, determine o menor deles
menorDeTres :: Int -> Int -> Int -> Int
menorDeTres value1 value2 value3 = menorDeDois value3 (menorDeDois value1 value2)