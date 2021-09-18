module Exe023 where

nome :: (String, (Int, Float)) -> String
nome (n, p) = n

nome' :: (String, (Int, Float)) -> (Int, Float)
nome' (n, p) = p
---------------------------------------

name :: (String, (Int, Float)) -> String
name (n, _) = n

idade :: (String, (Int, Float)) -> Int
idade (_, (id, _)) = id

altura :: (String, (Int, Float)) -> Float
altura (_, (_, alt)) = alt
