module Exe031 where

somaPares :: [(Int,Int)] -> [Int]
somaPares lista = [x + y| (x,y) <-lista]
