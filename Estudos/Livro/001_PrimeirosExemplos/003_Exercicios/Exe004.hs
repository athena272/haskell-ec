module Exe004 where

--Gerar a lista
--[5,8,11,17,20,26,29,32,38,41]
listaNum :: [Int]
listaNum = [x | x <- [5,8..41], x /= 14, x /= 23, x /= 35]
