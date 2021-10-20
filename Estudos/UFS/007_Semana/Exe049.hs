module Exe049 where

--minha propria versao do length
length :: (Num b) => [a] -> b
length [] = 0
length (_:lista) = 1 + length lista