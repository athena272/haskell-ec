module Exe048 where

-- Construa uma função para calcular an, n≥0. Por convenção, 00 =1.
-- Construção por indução e formulação recursiva.
-- Variável de indução:  n.
-- Caso base: n0=0. Neste caso a função retorna 1 pois a0=1.
-- Hipótese de indução: Suponha que sabemos calcular para uma entrada n=k-1. Ou seja sabemos calcular ak-1  
-- Caso geral: O objetivo é calcular quando n=k, ou seja  ak . Mas queremos usar a HI. Ou seja, precisamos  criar uma estratégia que calcule ak a partir do valor de ak-1  , que supomos já calculado.
--Usando álgebra sabemos que ak=a. ak-1. Então nossa estratégia consiste em apenas multiplicar por a o valor de ak-1!!!

--Primeiro caso
pot :: Float -> Int -> Float
pot _ 0 = 1                -- caso base
pot a k = a * pot a (k-1)  -- caso geral

--Para tratar o caso de insucesso poderíamos fazer
pott :: Float -> Int -> Float
pott a k 
    | k < 0 = error "expoente negativo"
    | otherwise = pot a k

