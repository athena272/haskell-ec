module Exe028 where


--Dado dois inteiros elabore uma função para retornar o máximo entre eles e o número de vezes que ele ocorre
maxOcorre :: Int -> Int -> (Int, Int)
maxOcorre x y
    | x == y = (x, 2)
    | otherwise = (maior, 1)
    where 
        maior = (max x y)

--Usando maxOcorre defina uma função similar só que agora para três números.
maxDeTres x y z
    | tresIguais = (x, 3)
    | doisIguais = maxOcorre z (max x y)
    | otherwise = maxOcorre x (max y z)
    where
        tresIguais = (x == y && y == z)
        doisIguais = (y == z)  
        