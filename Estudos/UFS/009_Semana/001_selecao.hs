ordSelecao :: [Int] -> [Int] 
ordSelecao [] = []
ordSelecao zs = m : ordSelecao (removeLista m zs)
    where
        m = menor zs
-- ----------------------Funcoes Auxiliares
mini :: Int -> Int -> Int
mini a b 
    | a <= b = a
    | otherwise = b

menor :: [Int] -> Int 
menor [x] = x
menor (x:xs) = mini x (menor xs)

removeLista :: Int -> [Int] -> [Int]
removeLista _ [] = []
removeLista y (x:xs) 
    | y == x = xs
    | otherwise = x : removeLista y xs

