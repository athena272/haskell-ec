module Exe047 where

--Faça uma função que dada uma string e um inteiro representando um tamanho máximo de impressão para uma informação, devolve a mesma string justificada à direita, deixando espaços em branco na frente da string, se for o caso. Ex: se você fornecer “papagaio” e 15 de tamanho, a função deve retornar “       papagaio”,  incluindo assim 7 espaços em branco à esquerda de papagaio que tem 8 caracteres, para completar os 15 caracteres de tamanho reservados.
funcaoChata :: String -> Int -> String
funcaoChata palavra numEspacos = (replicate espacosVaziosFinais ' ') ++ palavra where espacosVaziosFinais = numEspacos - (length palavra)