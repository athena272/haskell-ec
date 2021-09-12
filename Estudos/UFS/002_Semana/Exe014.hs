module Exe014 where

--Dados três números, determine quantos estão acima da média dos três
mediaTres :: Float -> Float -> Float -> Float
mediaTres v1 v2 v3 = (v1 + v2 + v3) / 3

estarAcimaMedia :: Float -> Float -> Float
estarAcimaMedia media value
    | value > media = 1
    | otherwise = 0

contarAcimaMedia :: Float -> Float -> Float -> Float
contarAcimaMedia v1 v2 v3 = (estarAcimaMedia media3 v1) + (estarAcimaMedia media3 v2) + (estarAcimaMedia media3 v3)
    where 
        media3 = mediaTres v1 v2 v3