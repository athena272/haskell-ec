module Exe026 where
 
type Nome = String
type Idade = Int
type Altura = Float
type Pessoa = (Nome, (Idade, Altura))

nome :: Pessoa -> Nome
nome pessoa = fst pessoa 

idade :: Pessoa -> Idade
idade pessoa = fst(snd pessoa)

altura :: Pessoa -> Altura
altura pessoa = snd(snd pessoa)