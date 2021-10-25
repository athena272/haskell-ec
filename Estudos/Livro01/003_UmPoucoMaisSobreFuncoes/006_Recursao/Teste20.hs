module Teste02 where

fat :: Int -> Int
fat n
    | n <= 1 = 1
    | otherwise = n * fat (n - 1)

rever :: [a] -> [a] 
rever [] = []
rever (x:xs) = rever xs ++ [x]

--m ^ n
myPower :: Int -> Int -> Int
myPower _ 0 = 1
myPower m n = m * myPower m (n - 1) 