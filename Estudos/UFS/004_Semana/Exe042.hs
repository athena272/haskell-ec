module Exe042 where
import Data.Char

--Dadas duas palavras devolva True se forem palíndromos; caso contrário, devolva False. Duas palavras são palíndromos se a ordem de leitura, da esquerda para direita ou da direita para a esquerda, é indiferente. Ex: arara

palindromos :: String -> String -> Bool
palindromos word1 word2 = (word1 == (reverse word1)) && (word2 == (reverse word2))