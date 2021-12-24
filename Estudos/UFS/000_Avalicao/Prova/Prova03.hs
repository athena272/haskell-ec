-- Nome do Aluno: GUILHERME ROSÁRIO ALVES
-- Matrícula: 202100022784

import Data.Typeable

--Questao 01)
{--
Considere uma lista de triplas do tipo [(Int, Int, Int)]. Elabore uma função que
dado uma lista de triplas, devolve uma lista de triplas com os seus elementos ordenados em
ordem decrescente. Por exemplo, se a entrada for [(2,1,5), (4,4,8)] a função
devolverá [(5,2,1), (8,4,4)]. Nesta questão é proibido o uso de compreensão e
recursão.
--}
questao01 ::  [(Int, Int, Int)] ->  [(Int, Int, Int)]
questao01 lista = map ordena lista 

ordena :: (Int, Int, Int) -> (Int, Int, Int)
ordena (x,y,z)
    | (max (max x y) (max y z)) == x = (x, max y z, min y z)
    | (max (max x y) (max y z)) == y = (y, max x z, min x z)
    | (max (max x y) (max y z)) == z = (z, max x y, min x y)

--Questao 02)
{--
Defina uma função que dada uma Figura, mova a figura uma quantidade x na horizontal e
uma quantidade y na vertical.
--}

type Point = (Double, Double)
data Figura = Circulo { posCirculo :: Point, raio :: Double } | 
              Retangulo { posRetangulo :: Point, base :: Double, altura :: Double} |
              FiguraComposta [Figura]

moverBola :: Figura -> Double -> Double -> Figura
moverBola (Circulo (coodX, coodY) raio) newX newY = (Circulo (coodX + newX, coodY + newY) raio) 

moverRetangulo :: Figura -> Double -> Double -> Figura
moverRetangulo (Retangulo (coodX, coodY) base altura ) newX newY = (Retangulo (coodX + newX, coodY + newY) base altura)

--Questao 03)
{--
Considere a seguinte definição.
f ys xs = foldr g False xs
    where
        g x y = y || elem x ys
--}

--Qual é o tipo mais geral de f?

-- f :: [a] -> [a] -> Bool

-- --Qual é o tipo mais geral de g?

-- g :: a -> Bool -> Bool
-- --(y já é suficiente pra retornar um booleano no resultado da função, então ele por si mesmo tb é um booleano)

-- --O que calcula a função f?

-- --R: f calcula se pelo menos um elemento da lista xs ocorre na lista ys. Se ocorrer retorna True, se não retorna False. 

-- --Redefina f sem usar definição local. Para isto use expressões lambda. A redefinição de f deve ser point-free, sem explicitar o último argumento da função.

-- f2 ys xs = foldr (\x y -> y || elem x ys) False xs

--Questao 04)
{--
Elabore um programa que leia do teclado: um valor n, indicando o número de frases a serem
lidas, um valor k, indicando o tamanho de palavras, e n frases da entrada. O programa extrai
somente as palavras das frases, eliminando a pontuação, e imprime todas as palavras com
tamanho maior ou igual a k, separadas por vírgula e em ordem alfabética, no formato abaixo.
--}
getList :: Int -> Int -> IO [Int]
getList n1 n2 = if (n1 == 0) then return []
                else do 
                        x <- getLine
                        y <- getLine

