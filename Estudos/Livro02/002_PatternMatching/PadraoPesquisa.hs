module PadraoPesquisa where

--Numero da sorte 7
lucky :: (Integral a) => a -> String  
lucky 7 = "SETE! BINGO!"  
lucky x = "Desculpe, tente novamente!"   

--Numero deve estar entre 1 e 5
sayMe :: (Integral a) => a -> String  
sayMe 1 = "Um!"  
sayMe 2 = "Dois!"  
sayMe 3 = "Três!"  
sayMe 4 = "Quatro!"  
sayMe 5 = "Cinco!"  
sayMe x = "Não está entre 1 e 5"  

--Factorial primeira versao
factorial :: Integer -> Integer
factorial n = product [1..n]

--factorial segunda versao
factorial' :: (Integral a) => a -> a
factorial' 0 = 1
factorial' n = n * factorial' (n - 1)

--somar vetores, o x com x, e o y com y versao um
addVector :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVector x y = (fst x + fst y, snd x + snd y) 

--somar vetores com pattern matching
addVector' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVector' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

--Descobrir a posicao de um tripla
first :: (a, b, c) -> a
first (a, _, _c) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

--Nossa própria versao da funcao head
head' :: [a] -> a
head' [] = error "Proibido chamar head em uma lista vazia, amador!"
head' (x:_) = x

--Quantos elementos na lista?
quantosElem :: (Show a) => [a] -> String
quantosElem [] = "A lista esta vazia"
quantosElem (x:[]) = "A lista tem apenas um elemento: " ++ show x
quantosElem (x:y:[]) = "A lista tem dois elementos: " ++ show x ++ " e " ++ show y
quantosElem (x:y:_) = "Esta lista esta longa demais. Veja os dois primeiros elementos: " ++ show x ++ " e " ++ show y  

--minha propria versao do length
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:lista) = 1 + length' lista

--minha versao da soma
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (primeiroElem:restoLista) = primeiroElem + sum' restoLista

--Primeira letra string
firstLetra :: String -> String 
firstLetra "" = "String vazia, ops!"
firstLetra all@(x:xs) = "A primeira letra de " ++ all ++ " ser " ++ [x] 

somafatorial :: Int -> Int
somafatorial 0 = 1
somafatorial n = somafatorial (n - 1) + (factorial' n)

somaRecursiva :: Int -> Int -> Int
somaRecursiva 0 v2 = v2
somaRecursiva v1 v2 = succ (somaRecursiva (v1 - 1) v2)

multRecursiva :: Int -> Int -> Int
multRecursiva 0 v2 = 0
multRecursiva v1 v2 = multRecursiva (v1 - 1) v2 + v2