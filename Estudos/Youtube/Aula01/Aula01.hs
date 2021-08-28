module Teste0001 where
  
adicionaDois :: Int -> Int
adicionaDois x = x + 2 

somaTres :: Int -> Int -> Int -> Int
somaTres a b c = a + b + c

listaSomaQuatro :: [Int] -> [Int]
listaSomaQuatro xs = [x + 4 | x <- xs, (mod x 2) /= 0]

--Função para dobrar valores da lista
dobraLista :: [Int] -> [Int]
dobraLista xs = [x * 2 | x <- xs]

--Função 2x + 1

doisXUm :: [Int] -> [Int]
doisXUm xs = [2 * x + 1 | x <- xs, (x /= 5)]

--Funcao MaiorQue
--De Maneira infixa
maiorQue :: Int -> Int -> Bool
maiorQue x y = (>) x y

--Lista de numeros pares
listaPares :: [Int] -> [Int]
listaPares xs = [x | x <- xs, (mod x 2) == 0]

--Lista de numeros primos até 20
listaPrimos :: [Int] -> [Int]
listaPrimos xs = [x | x <- xs, 7 /= x, ((mod x 2 /= 1) || (x < 10))]