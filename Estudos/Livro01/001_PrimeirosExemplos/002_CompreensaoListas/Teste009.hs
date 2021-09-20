module Teste009 where

--Dobrar valores dentro da lista
dobrarVrLista :: [Int] -> [Int]
dobrarVrLista xs = [2 * x | x <- xs]

multiploDe4 :: [Int] -> [Int]
multiploDe4 xs = [x | x <- xs, x `mod` 4 == 0]

negativoNaLista :: [Int] -> Bool
negativoNaLista xs = or [x < 0 | x <- xs]

type Aluno = String
type Nota = Float
type NotaDisc = [(Aluno, Nota)]


ordenarFaixa :: [(String, Float)] -> [String]
ordenarFaixa lista = ordem1 ++  ordem2 ++  ordem3 ++  ordem4
  where
    notas = [(nome, nota) | (nome, nota)<- lista, nota >= 7]
    ordem1 = [ nome |(nome, numero) <- notas, numero == 10]
    ordem2 = [nome |(nome, numero) <- notas, numero >= 9 && numero <= 9.9]
    ordem3 = [nome |(nome, numero) <- notas, numero >= 8 && numero <= 8.9]
    ordem4 = [nome |(nome, numero) <- notas, numero >= 7 && numero <= 7.9]

