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

myReplicate :: Int -> Int -> [Int]
myReplicate n x 
    | n <= 0 = []
    | otherwise = x : myReplicate (n - 1) x

myTake :: Int -> [Int] -> [Int]
myTake n _
    | n <= 0 = []
myTake _ [] = []
myTake n (x:xs) = x : myTake (n - 1) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myZip :: [Int] -> [Int] -> [(Int, Int)] 
myZip [] _ = []
myZip _ [] = []
myZip (x:xs) (y:ys) = (x, y) : myZip xs ys