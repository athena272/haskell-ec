module Exe009 where
import Data.Char

--versao professora
ehMinusculo :: Char -> Bool
ehMinusculo c = ('a' <= c) && (c <= 'z')

--minha versao
ehMinusculo' :: Char -> Bool
ehMinusculo' c = c `elem` ['a'..'z']

--versao professora
paraMaiusculo :: Char -> Char
paraMaiusculo c
    | ehMinusculo c = chr (ord c - ord 'a' + ord 'A')
    | otherwise = c

--minha versao
paraMaiusculo' :: Char -> Char
paraMaiusculo' c | c `elem` ['a'..'z'] = (toUpper c)
                 | otherwise = c       