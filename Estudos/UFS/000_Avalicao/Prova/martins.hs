questao01 :: [(Int, Int, Int)] -> [(Int, Int, Int)]
questao01 lista = filter ehImpar (map ordena lista)
    where 
        ehImpar (x, y, z) = odd (x * y * z) 

ordena :: (Int, Int, Int) -> (Int, Int, Int)
ordena (x,y,z)
    | x >= y && z >= y && z >= x = (z,x,y)
    | x >= y && y >= z && x >= z = (x,y,z)
    | x >= y && z >= y && x >= z = (x,z,y)
    | y >= x && y >= z && z >= x = (y,z,x)
    | y >= x && y >= z && x >= z = (y,x,z)
    | y >= x && z >= y && z >= x = (z,y,x)
    