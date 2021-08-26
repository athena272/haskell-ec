module CompreesaoListas where

--Função para dobrar valores da lista
dobraLista :: [Int] -> [Int]
dobraLista xs = [x * 2 | x <- xs]

--Função 2x + 1

doisXUm :: [Int] -> [Int]
doisXUm xs = [2 * x + 1 | x <- xs, (x /= 5)]


