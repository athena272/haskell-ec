module Teste004 where

--somando(concatenando lista)

somarListaInt :: [Int] -> [Int] -> [Int]
somarListaInt x y = (++) x y --maneira infixa
--somarLista x y = x + y  --maneira comum

somarListaBool :: [Bool] -> [Bool] -> [Bool]
somarListaBool a b = (++) a b --maneira infixa
--somarListaBool a b = (++) a b --maneira comum

somarListaChar :: [Char] -> [Char] -> [Char]
somarListaChar i j = (++) i j --maneira infixa
--somarListaChar i j = (++) i j --maneira comum

somar :: Int -> Int
somar x = x + 1