module Exe008 where
--Gerar a lista
--['@','A','C','D','E','G','J','L']	 
listaLetras :: [Char] 
listaLetras = [x | x <- ['@'..'L'], x /= 'B', x /= 'F', x /= 'H', x /= 'I']
--listaLetras = filter (\x -> not(elem x "BFHI")) . map (\ x -> x) $ ['@'..'L']