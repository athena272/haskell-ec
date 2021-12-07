questao01 :: Int -> Int -> Int -> [Int]
questao01 m 0 p = []
questao01 m n p 
    | m > p && n > m = [] --Exemplo [10, 11..1] Não pode, retorne uma lista vazia
    | saltoNegativaPositiva = []
    | otherwise = m : questao01 (m + (n - m)) n p
        
    where
        saltoNegativaPositiva = 
            if (n > 0) then
                m >= p
            else
                m < p 

 


questao03 :: [[Int]] -> [[Int]]
questao03 [] = []
questao03 (subLista:restoList)
    | (length subLista) >= maiorLength = subLista : questao03 restoList
    | otherwise = questao03 restoList
    where
        maiorLength = pegarMaiorTamanho (lengthLista (subLista:restoList))

lengthLista :: [[Int]] -> [Int]
lengthLista [] = []
lengthLista (subLista:restoList) = (length subLista) : lengthLista restoList

pegarMaiorTamanho :: [Int] -> Int
pegarMaiorTamanho [] = 0
pegarMaiorTamanho listaInt = last (mergeSort listaInt)

mergeSort :: [Int] -> [Int]
mergeSort [] = [] --caso base
mergeSort [x] = [x]
mergeSort xs = intercala (mergeSort us) (mergeSort vs) -- caso geral
         where meio = (length xs) `div` 2
               us = take meio xs
               vs = drop meio xs

intercala :: [Int] -> [Int] -> [Int]
intercala xs [] = xs --casos base
intercala [] ys = ys
intercala (x:xs) (y:ys) --caso geral
     | x <= y = x: intercala xs (y:ys)
     | otherwise = y: intercala (x:xs) ys