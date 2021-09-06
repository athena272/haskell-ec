module CompreensaoLista where

--Trocar numeros impares maiores que 10 por "BANG!", se forem impares menores "BOOM!", se for par nem aparece
boomBangs :: [Int] -> [String]
boomBangs xs = [if x > 10 then "BANG!" else "BOOM!" | x <- xs, odd x]

--Somar elementos de duas listas
sumListValues :: [Int] -> [Int] -> [Int]
sumListValues xs ys = [x + y | x <- xs, y <- ys]
