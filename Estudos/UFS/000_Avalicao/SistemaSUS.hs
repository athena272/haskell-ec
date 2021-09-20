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

-- item a) Cadastramento de um cidadão no sistema. 
--Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
addCadastroSUS :: Cidadao -> CadastroSUS -> CadastroSUS
addCadastroSUS myCidadao myDataBase
    | checkCPF (getCPF myCidadao) myDataBase = error "Usuario existente"
    | otherwise = myCidadao : myDataBase
    
--item b)O cidadão pode querer modificar algum desses dados, por exemplo, o número de telefone ou endereço. Para isto, precisamos de funções de atualização dos dados no cadastro, passando os novos dados. Para simplificar o sistema, vamos supor apenas as funções de atualização do endereço e do telefone, já que as demais atualizações seguiriam o mesmo princípio. No processo de atualização, o cadastro SUS informado será copiado para um novo cadastro SUS. Neste novo cadastro, os registros de outros cidadãos permanecerão inalterados e somente os dados do cidadão que está sendo atualizado sofrerão modificações.
atualizaEnderecoSUS :: CPF -> CadastroSUS -> Endereco -> CadastroSUS
atualizaEnderecoSUS myCPF myDataBase newAdress = comeco ++ [(cpf,nome,gender,nasc,newAdress,muni,state,tel,email)| (cpf,nome,gender,nasc,newAdress,muni,state,tel,email) <- myDataBase, cpf == myCPF] ++ fim
    where position = findPosElem myCPF myDataBase
          comeco = take (position - 1) myDataBase
          fim = drop position myDataBase

atualizaTelefoneSUS :: CPF -> CadastroSUS -> Telefone -> CadastroSUS
atualizaTelefoneSUS myCPF myDataBase newTel = comeco ++ [(cpf,nome,gender,nasc,adress,muni,state,newTel,email) |  (cpf,nome,gender,nasc,adress,muni,state,newTel,email) <- myDataBase, cpf == myCPF] ++ fim
    where position = findPosElem myCPF myDataBase
          comeco = take (position - 1) myDataBase
          fim = drop position myDataBase

--item c) Quando um cidadão falece, a família tem que notificar o fato em um posto de saúde, para que ele seja retirado do cadastro corrente do SUS. Como há uma verificação do atestado de óbito, isto só pode ser feito no posto. O sistema precisará da função abaixo. Se o CPF existir no cadastro corrente do SUS, o registro do cidadão deve ser completamente excluído, gerando um novo cadastro sem os dados deste cidadão. Se o CPF não existir, uma mensagem de erro, usando error, sinalizando que o cidadão não pertence ao cadastro deve ser exibida.
cidadaoMortoSUS :: CPF -> CadastroSUS -> CadastroSUS
cidadaoMortoSUS myCPF myDataBase = [(cpf,nome,gender,nasc,adress,muni,state,tel,email) | (cpf,nome,gender,nasc,adress,muni,state,tel,email) <- myDataBase, myCPF /= cpf]

--item d) Um gestor de saúde pode querer pesquisar algumas informações deste cadastro, como por exemplo, quantidade de cidadãos por município, por estado, ou ainda por município e por faixa de idade, ou por estado e por faixa de idade, para ter uma ideia de como planejar as faixas de vacinação. Assim, o sistema deve prever algumas funções de consulta:
type IdadeInicial = Int
type IdadeFinal = Int
type FaixaIdade = (IdadeInicial, IdadeFinal)
type Quantidade = Int
--Retorna a quantidade de cidadoes por municicipi
cidadaosPorMunicipio :: CadastroSUS -> Municipio -> Quantidade
cidadaosPorMunicipio myDataBase myMunicipio = length [(cpf,nome,gender,nasc,adress,muni,state,tel,email) | (cpf,nome,gender,nasc,adress,muni,state,tel,email) <- myDataBase, myMunicipio == muni]

--Retorna a quantidade de cidadaoes por Estado
cidadaosPorEstado :: CadastroSUS -> Estado -> Quantidade
cidadaosPorEstado myDataBase myState = length [(cpf,nome,gender,nasc,adress,muni,state,tel,email) | (cpf,nome,gender,nasc,adress,muni,state,tel,email) <- myDataBase, myState == state]

--Retorna a quantidade de cidadaoes por Municipio e Idade
cidadaosPorMunicipioIdade :: CadastroSUS -> Municipio-> FaixaIdade -> Quantidade
cidadaosPorMunicipioIdade myDataBase myMunicipio faixasIdade = length [(cpf,nome,gender,nasc,adress,muni,state,tel,email) | (cpf,nome,gender,nasc,adress,muni,state,tel,email) <- myDataBase, myMunicipio == muni, (getIdade nasc) >= (fst faixasIdade), (getIdade nasc) <= (snd faixasIdade)]

--Retorna a quantidade de cidadaoes por Estado
cidadaosPorEstadoIdade :: CadastroSUS -> Estado -> FaixaIdade -> Quantidade
cidadaosPorEstadoIdade myDataBase myState faixasIdade = length [(cpf,nome,gender,nasc,adress,muni,state,tel,email) | (cpf,nome,gender,nasc,adress,muni,state,tel,email) <- myDataBase, myState == state, (getIdade nasc) >= (fst faixasIdade), (getIdade nasc) <= (snd faixasIdade)]

--item d) Pode ser interessante também gerar uma lista da quantidade de cidadãos por faixas de idade para um dado município ou estado. As faixas de idade inicialmente previstas são:
---FAIXAS DE IDADE
--81 - 130
--71 - 80
--61 - 70
--51 - 60
--41 - 50
--31 - 40
--21 - 30
--12 - 21
--O gestor pode escolher todas ou algumas destas faixas para gerar a lista. O gestor pode também, a depender das características de seu município, escolher outras faixas, já que a faixa é um parâmetro da função. Caso o gestor decida, por exemplo, coletar dados para uma idade específica, digamos 25 anos, ele deve informar a faixa (25, 25).

listaMunicipioFaixas :: CadastroSUS -> Municipio -> [FaixaIdade] -> IO()
listaMunicipioFaixas myDataBase myMunicipio listaFaixasIdade = putStrLn (geraListaMunicipioFaixas myDataBase myMunicipio listaFaixasIdade)
--listaMunicipioFaixas myDataBase myMunicipio faixasIdade
--listaEstadoFaixas :: CadastroSUS -> Estado-> [FaixaIdade] -> IO()

--Estas funções precisam de funções auxiliares para gerar uma lista de quantidades por faixas de idade, para depois gerar a exibição usando as funções do item (f).
geraListaMunicipioFaixas :: CadastroSUS -> Municipio -> [FaixaIdade] -> [(FaixaIdade, Quantidade)]
geraListaMunicipioFaixas myDataBase myMunicipio listaFaixasIdade = [(faixasIdade, quantidade) | faixasIdade <- listaFaixasIdade, quantidade <- [cidadaosPorMunicipioIdade myDataBase myMunicipio faixasIdade]] 
    
geraListaEstadoFaixas :: CadastroSUS -> Estado -> [FaixaIdade] -> [(FaixaIdade, Quantidade)]
geraListaEstadoFaixas myDataBase myState listaFaixasIdade = [(faixasIdade, quantidade) | faixasIdade <- listaFaixasIdade,quantidade <- [cidadaosPorEstadoIdade myDataBase myState faixasIdade]]

--Além do cadastro no sistema SUS, haverá um cadastro dos cidadãos vacinados. Este cadastro está definido a seguir:
type Vacinados = [Vacinado]
--Cada item desse cadastro, Vacinado, é da forma
type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)

--GETS e outras funçoes auxiliares
getCPF :: Cidadao -> CPF
getCPF (myCPF, _, _, _, _, _, _, _, _) = myCPF 

getMunicipio :: Cidadao -> Municipio
getMunicipio (_, _, _, _, _, myMunicipio, _, _, _) = myMunicipio

getEndereco :: Cidadao -> Endereco
getEndereco (_, _, _, _, myEndereco, _, _, _, _) = myEndereco

getTelefone :: Cidadao -> Telefone
getTelefone (_, _, _, _, _, _, _, myTelefone, _) = myTelefone

getDataNasc :: Cidadao -> DataNasc
getDataNasc (_, _, _, myNasci, _, _, _, _, _) = myNasci 

--Subtrair 2021 pela data de Nascimento
--Se a data de nascimento estiver antes(ser menor) do dia 27 e do mes 09, a pessoa ja fez aniversario, se não, ela ainda é um ano mais jovem
getIdade :: DataNasc -> Int
getIdade myNasci 
                | (first myNasci) <= 27 && (second myNasci) <= 9 = 2021 - (third myNasci)
                | otherwise  = 2021 - (third myNasci) - 1

----Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
checkCPF :: CPF -> CadastroSUS -> Bool
checkCPF myCPF myDataBase = or [myCPF == cpfDataBase| (cpfDataBase, _, _, _, _, _, _, _, _) <- myDataBase] --Se pelo menos um for verdadeiro na lista, já é o bastante, por isso a funcao "or"

--Atribuir um valor(indixe) para cada cidadao que exisitir no "banco de dados"
posicionarElementosLista :: CadastroSUS -> [(Int, Cidadao)]
posicionarElementosLista myDataBase = zip posicoes myDataBase
    where posicoes = [1..(length myDataBase)]

--Encontrar a posicao do cidadao com base no seu CPF
findPosElem :: CPF -> CadastroSUS -> Int
findPosElem myCPF myDataBase
    |null posicao = 0
    |otherwise = head posicao
    where posicao = [ position | (position, cidadao) <- (posicionarElementosLista myDataBase), (getCPF cidadao)  == myCPF]

--Descobrir a posicao de um tripla
first :: (a, b, c) -> a
first (a, _, _c) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c