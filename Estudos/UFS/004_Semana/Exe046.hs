module Exe046 where

--Escreva um função que dada uma string, devolva a mesma string com o caracter \n ao final. Ex: se a entrada for “gato” retornará “gato\n”.
addBarraN :: String -> String 
addBarraN palavra = palavra ++ "\n"

--Use a questão anterior, para construir a função que dada uma lista de strings devolve uma única string  contendo a concatenação  das srings da lista fornecida, tal que estas strings estejam separadas por \n. Ex: se a entrada for [“gato”, “e”, “rato”] retornará “gato\ne\nrato\n”
addListaBarraN :: [String] -> String
addListaBarraN lista = concat [addBarraN palavra | palavra <- lista]

--Usando as duas últimas funções, faça uma função que imprime na tela uma lista de palavras de forma que cada palavra da lista apareça em uma linha da tela.
imprimirQuebrado :: [String] -> IO()
imprimirQuebrado wordList = putStr (addListaBarraN wordList) 