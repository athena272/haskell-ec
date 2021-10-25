module Teste02 where

fat :: Int -> Int
fat n
    | n <= 1 = 1
    | otherwise = n * fat (n - 1)

rever :: [a] -> [a] 
rever [] = []
rever (x:xs) = rever xs ++ [x]