module Exe041 where

--Dadas duas listas de palavras, sendo uma de adjetivos e outra  de nomes, construa uma lista que explora todas as combinações de adjetivos e nomes das duas listas. Ex: adjetivos = [“bonito”, “alegre”], nomes=[“menino”, “garoto”]. A resposta deve ser [“menino bonito”, “menino alegre”, “garoto bonito”, “garoto alegre”]

adjetivos :: [String] -> [String] -> [String]
adjetivos lista1 lista2 = [elem2 ++ " " ++ elem1 | elem1 <- lista1, elem2 <- lista2]