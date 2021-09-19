module Exe039 where

--Lista de reais
listaReaisAte100 :: [Float] -> [Float]
listaReaisAte100 lista = [x | x <- lista, x >= 0, x <= 100]