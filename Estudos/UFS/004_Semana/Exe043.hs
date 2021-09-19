module Exe043 where

--Dadas duas listas uma do tipo Nome e outra do tipo Idade, já vistos, construa uma lista com elementos do tipo (Nome, Idade) 
type Nome = String
type Idade = Int


listaNomeIdade :: [Nome] -> [Idade] -> [(Nome, Idade)]
listaNomeIdade names ages = (zip names ages)