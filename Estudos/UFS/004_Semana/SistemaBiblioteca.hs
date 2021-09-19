module SistemaBiblioteca where
import Data.List

--Considere um banco de dados de biblioteca com os seguintes tipos
type Pessoa = String
type Livro = String
type Emprestimos = [(Pessoa, Livro)]

meuBancoDados :: Emprestimos
meuBancoDados = [("ivo", "livro A"), ("carlos", "livro B"),("joana", "livro C"),("gui", "livro D"),("pedrino", "livro A"), ("gui", "livro E"), ("gui", "livro F"), ("ivo", "livro G")] 
--Escreva as seguintes funções:

--Dada uma pessoa, encontre os livros que ela emprestou;
findLivro :: Pessoa -> Livro
findLivro nome = head [livro | (pessoaComLivro,livro) <- meuBancoDados, pessoaComLivro == nome]

--Dado um livro, encontre quem emprestou este livro, assumindo que o livro pode ter mais de um exemplar;
finPessoaEmprestou :: Livro -> [Pessoa] 
finPessoaEmprestou livro = [pessoaComLivro | (pessoaComLivro,livroEmprestado) <- meuBancoDados, livro == livroEmprestado]

--Dado um livro, desejamos saber se o mesmo se encontra emprestado ou não;
livroEstaEmprestado :: Livro -> Bool
livroEstaEmprestado livro = or [livroEmprestado == livro| (_,livroEmprestado) <- meuBancoDados]

--Dada uma pessoa, desejamos saber a quantidade de livros que ela tomou emprestado;
quantosLivros:: Pessoa -> Int
quantosLivros nome = length [livro | (pessoaComLivro,livro) <- meuBancoDados, pessoaComLivro == nome]

--Dado um par (Pessoa, Livro), queremos adicioná-lo  à lista de emprestados, sinalizando o empréstimo realizado;
addEmprestimo :: (Pessoa, Livro) -> Emprestimos
addEmprestimo (pessoa, livro) = (:) (pessoa, livro) meuBancoDados --maneira infixa

--Dado um par (Pessoa, Livro), queremos removê-lo  da lista de emprestados, sinalizando a sua devolução.
deleteEmprestimo :: (Pessoa, Livro) -> Emprestimos
deleteEmprestimo (pessoa, livro) 
    | (pessoa, livro) `elem` meuBancoDados = (pessoa, livro) `delete` meuBancoDados-- se estiver no banco, retirar o elemento 
    | otherwise = meuBancoDados --caso não, só imprimir a lista
