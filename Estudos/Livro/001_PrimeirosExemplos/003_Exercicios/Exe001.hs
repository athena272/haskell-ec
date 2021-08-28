module Exe001 where 

--Gerar a lista 
--[1,11,121,1331,14641,161051,1771561]	
multiplos11 :: [Int]
multiplos11 = [11 ^ x| x <- [1..5]]
