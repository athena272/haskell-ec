module Teste02 where


fat :: Int -> Int
fat n
    | n <= 1 = 1
    | otherwise = n * fat (n - 1) + 1
    