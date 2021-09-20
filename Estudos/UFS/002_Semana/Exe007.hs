module Exe007 where

--número ao quadrado(again)
quadX :: Int -> Int 
quadX x = (^) x 2

--Atividade 03 area hero
areaHeron :: Float -> Float -> Float -> Float
areaHeron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
    where s = (a + b + c) / 2 