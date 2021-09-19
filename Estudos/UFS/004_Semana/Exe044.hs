module Exe044 where

--Dada uma lista de (Estados, Capitais), construa um par com duas listas, onde o primeiro elemento é a lista de estados e o segundo elemento a de capitais
type Estados = String
type Capitais = String


--listaEstadosCapitais :: [Estados] -> [Capitais] -> ([Estados], [Capitais])
listaEstadosCapitais estados capitais = unzip (zip estados capitais)