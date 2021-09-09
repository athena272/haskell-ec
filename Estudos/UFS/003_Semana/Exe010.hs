module Exe010 where

maior2 :: Int -> Int -> Int
maior2 a b 
            | a > b = a
            | otherwise = b

maior3 :: Int -> Int -> Int -> Int
maior3 x y z 
            | x > y = maior2 x z
            | otherwise = maior2 y z

maior3' :: Int -> Int -> Int -> Int
maior3' x y z = let
                    maiorMN = maior2 x z
                in
                    maior2 maiorMN z

maior3'' :: Int -> Int -> Int -> Int
maior3'' x y z = maior2 (maior2 x y) z