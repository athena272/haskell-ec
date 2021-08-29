module Exe005 where

--Gerar a lista
--[1.0,0.5,0.25,0.125,0.0625,0.03125]
listaNumQuebrado :: [Double]
listaNumQuebrado = [(x / 2) | x <- [2.0,1.0,0.5,0.25,0.125,0.0625]]