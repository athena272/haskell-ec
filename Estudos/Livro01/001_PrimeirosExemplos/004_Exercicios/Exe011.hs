module Exe011 where

--	 uma	 função	 que	 receba	 um	 vetor	 de	 Strings	 e retorne	 uma	lista	 com	 o	 tamanho	 de	 cada	 String.	As	palavras	 de tamanho	par	devem	ser	excluídas	da	resposta.
contLetrasPalavras :: [String] -> [Int]
contLetrasPalavras xs = [(length x) | x <- xs, mod (length x) 2 /= 0]   