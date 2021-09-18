module Exe038 where
import Data.Char

--Escreva uma função que dada uma String, devolve outra String em que as letras minúsculas foram transformadas em maiúsculas e os demais caracteres permanecem iguais. Você pode usar as função paraMaiusculo, já vista, na sua solução
--minha versao para maiúscula
paraMaiusculo' :: Char -> Char
paraMaiusculo' c | c `elem` ['a'..'z'] = (toUpper c)
                 | otherwise = c   

palavrParaMaiusculo :: String -> String
palavrParaMaiusculo word = [paraMaiusculo' letra | letra <- word]