module Exe002 where
import Data.Char --necessário importa para transformar char to int e vice-versa

--Somar um inteiro com um char e gerar um float
somarIntChar :: Int -> Char -> Float
somarIntChar i c = fromIntegral (i + (ord c))