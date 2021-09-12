module Exe019 where

import qualified System.Process as SP

clearScreen :: IO ()
clearScreen = do
    _ <- SP.system "reset"
    return ()

------Elabore uma função que determine se um inteiro é múltiplo de 3 e/ou de 5 ou de nenhum deles. A saída deve ser a mensagem “multiplo de 3 e de 5” “multiplo de 3” , “multiplo de 5” ou “não eh multiplo de 3 nem de 5”.
mult3ou5 :: Integral a => a -> String
mult3ou5 x
    | nenhum = "nao eh multiplo de 3 nem de 5"
    | dosDois = "eh multiplo de 3 e 5"
    | soCinco = "eh multiplo somente de 5"
    | soTres = "eh multiplo somente de 3"
    where
        nenhum = (x `mod` 3 /= 0) && (x `mod` 5 /= 0)
        dosDois = (x `mod` 3 == 0) && (x `mod` 5 == 0)
        soCinco = (x `mod` 5 == 0)
        soTres = (x `mod` 3 == 0)

