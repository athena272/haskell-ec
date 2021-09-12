module MaisRecursao where

myreplicate :: (Num i, Ord i) => i -> a -> [a]
myreplicate n elem
    | n <= 0 = []
    | otherwise = elem:myreplicate (n-1) elem

mytake :: (Num i, Ord i) => i -> [a] -> [a]
mytake n _
    | n <= 0 = []
mytake _ [] = []
mytake n (elem:lista) = elem : mytake (n-1) lista

myreversed :: [a] -> [a] 
myreversed [] = []
myreversed (elem:lista) = myreversed lista ++ [elem]

myrepeat :: a -> [a]
myrepeat elem = elem : myrepeat elem

myzip :: [a] -> [b] -> [(a, b)]
myzip _ [] = [] 
myzip [] _ = []
myzip (elem1:lista1) (elem2:lista2) = (elem1, elem2) : myzip lista1 lista2

myelem :: (Eq a) => a -> [a] -> Bool
myelem elemento [] = False
myelem elemento (elem:lista)
    | elemento == elem = True
    |otherwise = elemento `myelem` lista