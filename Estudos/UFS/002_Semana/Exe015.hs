--LimparTela
import qualified System.Process as SP
clearScreen :: IO ()
clearScreen = do
  _ <- SP.system "reset"
  return ()

raizMaisB a b c
    | delta >= 0 && a > 0 = raiz
    | otherwise = error "Como delta é negativo não há raizes reais" 
    where
        raiz = (-b + (sqrt delta)) / 2 * a
        delta = (b ^ 2) - (4 * a * c)


raizMenosB a b c
    | delta >= 0 && a > 0 = raiz
    | otherwise = error "Como delta é negativo não há raizes reais" 
    where
        raiz = (-b - (sqrt delta)) / 2 * a
        delta = (b ^ 2) - (4 * a * c)

