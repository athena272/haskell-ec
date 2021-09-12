module Exe018 where

import qualified System.Process as SP

clearScreen :: IO ()
clearScreen = do
    _ <- SP.system "reset"
    return ()

--Minha versao do And
myAnd :: Bool -> Bool -> Bool
myAnd False False = False
myAnd _ _ = True

myAndNot :: Bool -> Bool -> Bool
myAndNot True True = False
myAndNot _ _ = True