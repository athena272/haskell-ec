module Exe010 where

serDiferente :: Int -> Int -> Bool 
serDiferente a b = (/=) a b

tresSeremDiferente :: Int -> Int -> Int -> Bool 
tresSeremDiferente a b c = (serDiferente a b) && (serDiferente b c) && (serDiferente c a)