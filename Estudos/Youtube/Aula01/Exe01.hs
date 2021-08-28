module Exe01 where

--ex1
listaPares :: [Int] 
listaPares = [x | x <- [1..20], (mod x 2) == 0]

--ex2
listaSemSete :: [Int] 
listaSemSete = [x | x <- [1..20], x /= 7, x /= 17]

--ex3
listaDecimal :: [Double] 
listaDecimal = [(x * 0.1) + 1 | x <- [1..10]]

--ex4
--Se a palavra tiver un nº de letras impar, False, senao True
listaStringPar :: String -> Bool
listaStringPar x = mod (length x) 2  ==1

--ex5
--Receber uma lista de palavras, e retorna o tamanho de cada string. As palvras de tamanho par devem ser excluidas da lista retorna
numLetrasPalavras :: [String] -> [Int]
numLetrasPalavras xs = [(length x) | x <- xs, mod (length x) 2 /= 0]