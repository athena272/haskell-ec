module Exe009 where

--Retornar se o tamanho de uma string é par ou não
--Se for par == True
--Senao == False
stringPar :: String -> Bool
stringPar x = mod (length x) 2 == 0