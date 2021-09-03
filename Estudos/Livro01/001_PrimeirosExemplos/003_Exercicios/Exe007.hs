module Exe007 where

--Gerar a lista
--[2,4,8,10,12,16,18,22,24,28,30]
listNumbers :: [Int] 
listNumbers = [x | x  <- [2,4..30], x /= 6, x /= 14, x /= 20, x /= 26]