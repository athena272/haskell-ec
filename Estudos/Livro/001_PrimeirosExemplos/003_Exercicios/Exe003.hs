module Exe003 where

--Somar mais um na segunda letra
somarUmLetra :: [String] 
--somarUmLetra = ["A" ++ [x] ++ "BB" | x <- ['a'..'z']] FUNCIONA 
--somarUmLetra = [ "A" ++ x : "BB" | x <- ['a' .. 'g']] FUNCIONA
somarUmLetra =  [ 'A' : x : "BB" | x <- ['a' .. 'g']]