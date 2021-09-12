module Exe017 where
--Limpar Tela
import qualified System.Process as SP

clearScreen :: IO ()
clearScreen = do
    _ <- SP.system "reset"
    return ()

--Minha versao da funcao not
myNot :: Bool -> Bool 
myNot True = False
myNot False = True

--Minha versao da funcao OU(||)
myOr :: Bool -> Bool -> Bool
myOr True valueBool = True
myOr False valueBool = False

