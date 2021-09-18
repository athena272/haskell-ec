module Exe032 where

somaOrdPares :: [(Int,Int)] -> [Int]
somaOrdPares lista = [x + y| (x,y) <-lista, x < y]
