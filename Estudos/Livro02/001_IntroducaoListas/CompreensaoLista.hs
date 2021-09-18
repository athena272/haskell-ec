module CompreensaoLista where

--Trocar numeros impares maiores que 10 por "BANG!", se forem impares menores "BOOM!", se for par nem aparece
boomBangs :: [Int] -> [String]
boomBangs xs = [if x > 10 then "BANG!" else "BOOM!" | x <- xs, odd x]

--Somar elementos de duas listas
sumListValues :: [Int] -> [Int] -> [Int]
sumListValues xs ys = [x + y | x <- xs, y <- ys]

--Minha propria versao do length
length' xs = sum [1 | _ <- xs]

--Recebe uma string e remove tudo, execto letras maisculas da lista
removeNonUpperCasse :: String -> String
removeNonUpperCasse xs = [x | x <- xs, x `elem` ['A'..'Z']]

--Lista em ordem descrescente
ordemDescrecated :: Int -> Int -> [Int]
ordemDescrecated start end = reverse [start..end]

--Lista em ordem descrescente versao 02
ordemDescrecated' :: Int -> Int -> [Int]
ordemDescrecated' start end = [start,(start -1 )..end]


--gerar todos os trinangulos com lados maiores ou iguais a 10
triangles = [(a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10]]
--e que seja um triangulo retangulo 
rightTriangles = [(a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10], a ^ 2 + b ^ 2 == c ^ 2]
--e que o seu perimetro seja 24
rightTriangles' = [(a, b, c) | a <- [1..10], b <- [1..a], c <- [1..10], a ^ 2 + b ^ 2 == c ^ 2, a + b+ c == 24]

