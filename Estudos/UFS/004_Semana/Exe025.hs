module Exe025 where

--somar vetores, o x com x, e o y com y versao um
addVector :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVector x y = (fst x + fst y, snd x + snd y) 

--somar vetores com pattern matching
addVector' :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVector' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)