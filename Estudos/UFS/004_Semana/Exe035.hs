module Exe035 where

--versao 01 de Leila
calcImc :: [(Float, Float)] -> [Float]  
calcImc xs = [razimc w h | (w, h) <- xs]  
    where razimc peso altura = peso / altura ^ 2


--Cacular IMC de varios em lista, que esta em uma tupla
imcVarios :: (RealFloat a) => [(a, a)] -> [a]
imcVarios listaIMC = [valueIMC peso altura  | (peso, altura) <- listaIMC]   
    where valueIMC peso altura = (peso / altura ^ 2)