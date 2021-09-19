module Exe040 where
import Data.Char
--Dada uma String elabore uma função para retornar a mesma String sem os caracteres que são dígitos. Ex: “loja 2” deve retornar “loja ” 

semDigitos :: String-> String
semDigitos word = [letra| letra <- word, (isDigit letra) == False]
