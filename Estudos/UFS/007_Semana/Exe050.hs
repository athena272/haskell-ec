module Exe050 where

--minha versao da soma
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (primeiroElem:restoLista) = primeiroElem + sum' restoLista