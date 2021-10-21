module Exe052 where

myConcat :: [[a]] -> [a] 
myConcat [] = []
myConcat (xs:xss) = xs ++ myConcat xss

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myrepeat :: a -> [a]
myrepeat elem =  elem : myrepeat elem  

myzip :: [a] -> [b] -> [(a, b)]
myzip _ [] = [] 
myzip [] _ = []
myzip (elem1:lista1) (elem2:lista2) = (elem1, elem2) : myzip lista1 lista2