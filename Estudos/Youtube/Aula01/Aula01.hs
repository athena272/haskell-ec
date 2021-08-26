module Teste0001 where
  
adicionaDois :: Int -> Int
adicionaDois x = x + 2 

somaTres :: Int -> Int -> Int -> Int
somaTres a b c = a + b + c

listaSomaQuatro :: [Int] -> [Int]
listaSomaQuatro xs = [x + 4 | x <- xs, (mod x 2) /= 0]