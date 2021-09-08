module Exe005 where
import Data.Char

--Dados dois caracteres, retornar o menor deles de acordo com a ordem alfabética
compararCharacter x y = if (toLower x) > (toLower y) 
                            then x
                        else if  (toLower y) > (toLower x)
                            then y
                        else '0'