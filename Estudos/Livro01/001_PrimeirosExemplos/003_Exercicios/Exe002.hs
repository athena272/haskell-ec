module Exe002 where 

--Gerar a lista 
--[1,2,3,5,6,7,9,10,11,13,14,15,17,18,19,21,22,23,25,26,27,29,30,31,33,34,35,37,38,39]

excetoMultiplos4 :: [Int]
excetoMultiplos4 = [x | x <- [1..39], (mod x 4) /= 0]