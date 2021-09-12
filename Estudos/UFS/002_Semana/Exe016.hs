module Exe016 where
--LimparTela
import qualified System.Process as SP

clearScreen :: IO ()
clearScreen = do
  _ <- SP.system "reset"
  return ()

--Começo de fato
somaDobro :: Int -> Int -> Int
somaDobro v1 v2 = (v1 + v2) * 2

quadradoProduto :: Int -> Int -> Int
quadradoProduto v1 v2 = (v1 * v2) ^ 2

ouBooleanos :: Bool -> Bool -> Bool
ouBooleanos bool1 bool2 = (||) bool1 bool2
--ouBooleanos bool1 bool2 = bool1 || bool2