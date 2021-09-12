module ExpressaoCase where

import qualified System.Process as SP
clearScreen :: IO ()
clearScreen = do
    _ <- SP.system "reset"
    return ()

head' :: [a] -> a  
head' xs = case xs of [] -> error "Não existe head em listas vazias!"  
                      (x:_) -> x  

--Classifcar a lista, usando where
describeList :: [a] -> String  
describeList xs = "A lista eh " ++ what xs  
    where 
        what [] = "vazia."  
        what [x] = "uma lista unitaria."  
        what xs = "uma lista grande."  

--Classifcar a lista, usando case
describeList' :: [a] -> String 
describeList' xs = "A lista eh " ++ case xs of [] -> "vazia." 
                                               [x] -> "uma lista unitaria." 
                                               xs -> "uma lista grande"