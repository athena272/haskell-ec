module Exe008 where

--
maiorValue :: Int -> Int -> Int
maiorValue x y = if x >= y then x else y 

--other away
bigValue :: Int -> Int -> Int
bigValue x y | x >= y = x
             | otherwise = y   