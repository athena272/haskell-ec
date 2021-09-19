module SistemaSUS where
import Data.List 

--Tipo mais externo, para cadastro
type CadastroSUS = [Cidadao]

--Tipos para cada cadastro
type CPF = Integer
type Nome = String
type Genero = Char
type Dia = Int
type Mes = Int
type Ano = Int
type Data = (Dia, Mes, Ano)
type DataNasc = Data
type Endereco = String
type Municipio = String
type Estado = String
type Telefone = String
type Email = String 
type Cidadao = (CPF, Nome, Genero, DataNasc, Endereco, Municipio, Estado, Telefone, Email)

--Meus cadastros pre-existentes no banco de dados 
bancoDeCadastros :: CadastroSUS
bancoDeCadastros = [(26716347665, "Paulo Souza", 'M', (11,10,1996),"Rua A, 202","Muribeca", "SE", "999997000", "psouza@gmail.com"),(87717347115, "Ana Reis",'F', (5,4,1970), "Rua B, 304","Aracaju", "SE", "999826004", "areis@gmail.com")]

--item a) Cadastramento de um cidadão no sistema. 
--Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
addCadastroSUS :: Cidadao -> CadastroSUS -> CadastroSUS
addCadastroSUS myCidadao myDataBase
    | checkCPF (getCPF myCidadao) myDataBase = error "Usuario existente"
    | otherwise = myCidadao : myDataBase
    
    
----Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
checkCPF :: CPF -> CadastroSUS -> Bool
checkCPF myCPF myDataBase = or [myCPF == cpfDataBase| (cpfDataBase, _, _, _, _, _, _, _, _) <- myDataBase] --Se pelo menos um for verdadeiro na lista, já é o bastante, por isso a funcao "or"

--item b) O cidadão pode querer modificar algum desses dados, por exemplo, o número de telefone ou endereço. Para isto, precisamos de funções de atualização dos dados no cadastro, passando os novos dados. Para simplificar o sistema, vamos supor apenas as funções de atualização do endereço e do telefone, já que as demais atualizações seguiriam o mesmo princípio. No processo de atualização, o cadastro SUS informado será copiado para um novo cadastro SUS. Neste novo cadastro, os registros de outros cidadãos permanecerão inalterados e somente os dados do cidadão que está sendo atualizado sofrerão modificações
atualizaEndSUS :: CPF -> CadastroSUS -> Endereco -> CadastroSUS
atualizaEndSUS num_cpf banco novo_endereco = parteUm ++ [(cpf,a,b,c,novo_endereco,e,f,g,h)| (cpf,a,b,c,endereco,e,f,g,h) <- banco, cpf == num_cpf] ++ parteDois
    where pos = encontraPosElem num_cpf banco
          parteUm = take (pos-1) banco
          parteDois = drop pos banco

--PROCURANDO ELEMENTO PARA ATUALIZAÇÃO DE DADOS

indexarLista :: CadastroSUS -> [(Int, Cidadao)]
indexarLista banco= zip ls banco
    where ls = [1..(length banco)]

encontraPosElem :: CPF -> CadastroSUS -> Int
encontraPosElem num_cpf banco 
    |null ps = 0
    |otherwise = head ps
    where ps = [ indice| (indice, pessoa) <- indexarLista banco, pegarCPF pessoa ==num_cpf]


--PEGANDO SOMENTE O ENDEREÇO
pegarEndereco :: Cidadao -> Endereco
pegarEndereco (,,,,endereco,,,,) = endereco



--Funcoes extras e auxiliares
--GETS e SETS
getCPF :: Cidadao -> CPF
getCPF (myCPF, _, _, _, _, _, _, _, _) = myCPF 

getEndereco :: Cidadao -> Endereco
getEndereco (_, _, _, _, myEndereco, _, _, _, _) = myEndereco

getTelefone :: Cidadao -> Telefone
getTelefone (_, _, _, _, _, _, _, _, myTelefone, _) = myTelefone

type Cidadao = (CPF, Nome, Genero, DataNasc, Endereco, Municipio, Estado, Telefone, Email)
type Nome = String
type Genero = Char
type Dia = Int
type Mes = Int
type Ano = Int
type Data = (Dia, Mes, Ano)
type DataNasc = Data
type Endereco = String
type Municipio = String
type Estado = String
type Telefone = String
type Email = String 
