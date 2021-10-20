module Exe052 where

myConcat :: [[a]] -> [a] 
myConcat [] = []
myConcat (xs:xss) = xs ++ myConcat xss
