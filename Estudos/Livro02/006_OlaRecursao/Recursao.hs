module Recursao where

--Primeira versao com recursividade
mymaximum :: (Ord a) => [a] -> a 
mymaximum [] = error "Lista vazia, amador!"
mymaximum [x] = x
mymaximum (x:xs) 
    | x > maisAlto = x
    | otherwise = maisAlto
    where maisAlto = mymaximum xs

--Segunda versao
mymaximum' :: (Ord a) => [a] -> a
mymaximum' [] = error "Lista vazia, amador!"
mymaximum' [x] = x
mymaximum' (x:xs) = max x (mymaximum' xs)