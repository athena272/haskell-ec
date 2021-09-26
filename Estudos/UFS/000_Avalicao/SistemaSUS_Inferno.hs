module SistemaSUS where

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
bancoDeCadastros = [(26716347665, "Paulo Souza", 'M', (11,10,1996),"Rua A, 202","Muribeca", "SE", "999997000", "psouza@gmail.com"),(87717347115, "Ana Reis",'F', (5,4,1970), "Rua B, 304","Aracaju", "SE", "999826004", "areis@gmail.com"),(99999999999, "Guilherme Alves", 'M', (02,07,2002),"Rua C, 405","Salgado", "SE", "999997044", "guilherme@gmail.com"), (88888888888, "Esmeralda Oliveira", 'F', (09,09,2003),"Rua D, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"), (10101010101, "Fernanda Menezes", 'F', (01,04,2000),"Rua E, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com")]

-- item a) Cadastramento de um cidadão no sistema.  Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
addCadastroSUS :: Cidadao -> CadastroSUS -> CadastroSUS
addCadastroSUS myCidadao myDataBase
    | checkCPFSUS (getCPF myCidadao) myDataBase = error "Cidadao  jah existente nesse banco"
    | otherwise = (:) myCidadao myDataBase

--Gets e checks auxiliares
getCPF :: Cidadao -> CPF
getCPF (myCPF, _, _, _, _, _, _, _, _) = myCPF

checkCPFSUS :: CPF -> CadastroSUS -> Bool
checkCPFSUS myCPF myDataBase = or [myCPF == cpfDataBase| (cpfDataBase, _, _, _, _, _, _, _, _) <- myDataBase] --Se pelo menos um for verdadeiro na lista, já é o bastante, por isso a funcao "or"

--item b)O cidadão pode querer modificar algum desses dados, por exemplo, o número de telefone ou endereço. Para isto, precisamos de funções de atualização dos dados no cadastro, passando os novos dados. Para simplificar o sistema, vamos supor apenas as funções de atualização do endereço e do telefone, já que as demais atualizações seguiriam o mesmo princípio. No processo de atualização, o cadastro SUS informado será copiado para um novo cadastro SUS. Neste novo cadastro, os registros de outros cidadãos permanecerão inalterados e somente os dados do cidadão que está sendo atualizado sofrerão modificações.
atualizaEnderecoSUS :: CPF -> CadastroSUS -> Endereco -> CadastroSUS
atualizaEnderecoSUS myCPF myDataBase newAdress 
    | not (checkCPFSUS myCPF myDataBase) = error "Esse cidadao nao existe nesse banco"
    | otherwise = comeco ++ dadoAtualizado ++ fim
    where position = findPosCidadao myCPF myDataBase
          comeco = take (position - 1) myDataBase
          fim = drop position myDataBase
          dadoAtualizado = [(cpf,nome,gender,nasc,newAdress,muni,state,tel,email)| (cpf,nome,gender,nasc,adress,muni,state,tel,email) <- myDataBase, cpf == myCPF]

atualizaTelefoneSUS :: CPF -> CadastroSUS -> Telefone -> CadastroSUS
atualizaTelefoneSUS myCPF myDataBase newTel     
    | not (checkCPFSUS myCPF myDataBase) = error "Esse cidadao nao existe nesse banco"
    | otherwise = comeco ++ dadoAtualizado ++ fim
    where position = findPosCidadao myCPF myDataBase
          comeco = take (position - 1) myDataBase
          fim = drop position myDataBase
          dadoAtualizado = [(cpf,nome,gender,nasc,adress,muni,state,newTel,email) |  (cpf,nome,gender,nasc,adress,muni,state,tel,email) <- myDataBase, cpf == myCPF]

----------------------Funcoes Auxiliares
--Atribuir um valor(indixe) para cada cidadao que exisitir no "banco de dados"
posicionarCidadaoLista :: CadastroSUS -> [(Int, Cidadao)]
posicionarCidadaoLista myDataBase = zip posicoes myDataBase
    where posicoes = [1..(length myDataBase)]

--Encontrar a posicao do cidadao com base no seu CPF
findPosCidadao :: CPF -> CadastroSUS -> Int
findPosCidadao myCPF myDataBase
    |posicao == [] = 0
    |otherwise =  head posicao
    where posicao = [ position | (position, cidadao) <- (posicionarCidadaoLista myDataBase), (getCPF cidadao)  == myCPF]

--item c) Quando um cidadão falece, a família tem que notificar o fato em um posto de saúde, para que ele seja retirado do cadastro corrente do SUS. Como há uma verificação do atestado de óbito, isto só pode ser feito no posto. O sistema precisará da função abaixo. Se o CPF existir no cadastro corrente do SUS, o registro do cidadão deve ser completamente excluído, gerando um novo cadastro sem os dados deste cidadão. Se o CPF não existir, uma mensagem de erro, usando error, sinalizando que o cidadão não pertence ao cadastro deve ser exibida.
removeSUS :: CPF -> CadastroSUS -> CadastroSUS
removeSUS myCPF myDataBase 
    | not (checkCPFSUS myCPF myDataBase) = error "Esse cidadao morto nao existe nesse banco"  --verificar se o CPF da pessoa morta existe
    | otherwise = [humanoSUS | humanoSUS <- myDataBase, myCPF /= (getCPF humanoSUS)]

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
cidadaosPorMunicipioIdade :: CadastroSUS -> Municipio-> Data ->FaixaIdade -> Quantidade
cidadaosPorMunicipioIdade myDataBase myMunicipio dataAtual faixasIdade = length [humanoSUS | humanoSUS <- myDataBase, myMunicipio == (getMunicipio humanoSUS), (getIdade humanoSUS dataAtual) >= (fst faixasIdade), (getIdade humanoSUS dataAtual) <= (snd faixasIdade)]

--Retorna a quantidade de cidadaoes por Estado
cidadaosPorEstadoIdade :: CadastroSUS -> Estado -> Data -> FaixaIdade -> Quantidade
cidadaosPorEstadoIdade myDataBase myState dataAtual faixasIdade = length [humanoSUS | humanoSUS <- myDataBase, myState == (getState humanoSUS), (getIdade humanoSUS dataAtual) >= (fst faixasIdade), (getIdade humanoSUS dataAtaual) <= (snd faixasIdade)]

--Gets e Sets auxiliares
getMunicipio :: Cidadao -> Municipio
getMunicipio (_, _, _, _, _, myMunicipio, _, _, _) = myMunicipio

getEstado :: Cidadao -> Estado
getEstado (_, _, _, _, _, _, myState, _, _) = myState

getDataNasc :: Cidadao -> DataNasc
getDataNasc (_, _, _, myNasci, _, _, _, _, _) = myNasci 

--Subtrair 2021 pela data de Nascimento
--Se a data de nascimento estiver antes(ser menor) do dia 27 e do mes 09, a pessoa ja fez aniversario, se não, ela ainda é um ano mais jovem
getIdade :: Cidadao -> Data ->Int
getIdade cidadao dataAtual 
                | myDia <= diaAtual || myMes <= mesAtual = anoAtual - myAno --dia menor que dia Atual, e mes menor que mes Atual, faz um calculo normal de idade
                | otherwise  = anoAtual - myAno - 1
                where
                    (myDia, myMes, myAno) = (getDataNasc cidadao)
                    (diaAtual, mesAtual, anoAtual) = dataAtual
