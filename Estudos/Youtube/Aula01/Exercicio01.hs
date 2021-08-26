module Exercicio01 where

--Lista de numeros pares
listaPares :: [Int] -> [Int]
listaPares xs = [x | x <- xs, (mod x 2) == 0]

--Lista de numeros primos até 20
listaPrimos :: [Int] -> [Int]
listaPrimos xs = [x | x <- xs, 7 /= x, ((mod x 2 /= 1) || (x < 10))]
