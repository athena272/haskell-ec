module Exe013 where
--Faça uma função que receba uma String e retorne True
--se esta for um palíndromo; caso contrário, False
encontrarPalindromo :: String -> Bool
encontrarPalindromo xs = (reverse) xs == xs