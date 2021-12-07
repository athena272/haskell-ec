-- Nome do Aluno: GUILHERME ROSÁRIO ALVES
-- Matrícula: 202100022784
--Questao 01)
{--
Elabore uma função recursiva que receba um caractere e uma string e
retorne a
intercalação das letras da string com o caractere dado. Caso a string
seja vazia ou
unitária a função deverá retornar a própria string. Por exemplo,
para as entradas ',' e "abcd" a função deve retornar "a,b,c,d";
para as entradas ',' e "a" a função deve retornar "a";
para as entradas ',' e "" a função deve retornar "".
--}
questao01 :: Char -> String -> String
questao01 _ [] = []
questao01 _ [x] = [x]
questao01 c (letra:restoList) = [letra] ++ [c] ++ questao01 c restoList
--Questao 02)
{--
Elabore uma função que ao receber uma lista de inteiros ordenados
ascendentemente retorna a lista eliminando todos os duplicados. A função
deve
explorar o fato da entrada estar ordenada. O resultado também deve estar
ordenado.
--}
questao02 :: [Int] -> [Int]
questao02 [] = []
questao02 [x] = [x]
questao02 lista = mergeSort (listaDeInteiros lista)
listaDeInteiros :: [Int] -> [Int]
listaDeInteiros [] = []
listaDeInteiros [x] = [x]
listaDeInteiros (x:xs)
| (verifica x xs) = listaDeInteiros xs
| otherwise = x : listaDeInteiros xs
verifica :: Int -> [Int] -> Bool
verifica x [] = False
verifica y (x:xs)
| y == x = True
| otherwise = verifica y xs
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
--Questao 3)
{--
Seja L uma lista de listas de inteiros. Chama-se de sublistas as listas
que são os
elementos de L. Por exemplo, a lista L dada por [[1,2],[],[2,4]], possui
as
sublistas [1,2], [] e [2,4]. Dada uma lista de listas de inteiros,
elabore uma
função que devolva uma lista composta das sublistas cujos tamanhos não
sejam
iguais ao maior tamanho das sublistas da lista de entrada.
--}
questao03 :: [[Int]] -> [[Int]]
questao03 [] = []
questao03 (subLista:restoList)
 | (length subLista) < maiorLength = subLista : questao03 restoList
 | otherwise = questao03 restoList
 where
 maiorLength = pegarMaiorTamanho (lengthLista
(subLista:restoList))
--Devolve um lista com o tamanho de cada uma das sublistas
{--
Entrada: [[1,2],[],[1,2,3],[3,4,5]]
Saida: [2,0,3,3]
--}
lengthLista :: [[Int]] -> [Int]
lengthLista [] = []
lengthLista (subLista:restoList) = (length subLista) : lengthLista
restoList
--Devolve um unico inteiro que tem o maior Length entra as sublistas
{--
Entrada: lengthLista [[1,2],[],[1,2,3],[3,4,5], logo o resultado eh
[2,0,3,3], e o maior Length eh 3]
Saida: 3
--}
pegarMaiorTamanho :: [Int] -> Int
pegarMaiorTamanho [] = 0
pegarMaiorTamanho listaInt = last (mergeSort listaInt)
--Questao 4)
{--
Usando a técnica de pedir mais informação ao amigo, defina uma função
que
calcule a posição do maior elemento de uma lista de inteiros. As posições
começam
a partir de zero. Caso o maior elemento da lista ocorra em várias
posições, a função
deve retornar a menor posição. Sua solução não pode utilizar nenhuma
função
pré-definida no Prelude nem definir função auxiliar que faça o mesmo que
alguma destas.
--}
questao04 :: [Int] -> Int
questao04 [] = -1 --Nao existe, uma vez que ha elemento para ter uma
posicao
questao04 [x] = 0 --eh o unico elemento, entao a sua posicao so poder ser
a zero
questao04 lista = (armazenaEcompara lista (findPosicion lista))
findPosicion :: [Int] -> Int
findPosicion [x] = x
findPosicion (x:xs)
| x > (head xs) = findPosicion (x:(drop 1 xs))
| otherwise = findPosicion xs
armazenaEcompara :: [Int] -> Int -> Int
armazenaEcompara [] _ = 0
armazenaEcompara (x:xs) y
| (compara x y == False) = 1 + armazenaEcompara xs y
| otherwise = 0
compara :: Int -> Int -> Bool
compara x y
| x == y = True
| otherwise = False