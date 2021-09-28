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
bancoDeCadastros = [(26716347665, "Paulo Souza", 'M', (11,10,1996),"Rua A, 202","Muribeca", "SE", "999997000", "psouza@gmail.com"),(87717347115, "Ana Reis",'F', (5,4,1970), "Rua B, 304","Aracaju", "SE", "999826004", "areis@gmail.com"),(99999999999, "Guilherme Alves", 'M', (02,07,2002),"Rua C, 405","Salgado", "SE", "999997044", "guilherme@gmail.com"), (88888888888, "Esmeralda Oliveira", 'F', (09,09,2003),"Rua D, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"), (10101010101, "Fernanda Menezes", 'F', (01,04,2000),"Rua E, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"),(24304304037, "Carlos Ferreira", 'M', (1, 6, 2019), "Avenida A, 617", "Aracaju", "SE", "888884567", "Davi@outlok.com.br"),(42618186808, "Gabriel Johnson", 'F', (24, 2, 2015), "Travessa Jerusalem, 194", "Itabaiana", "SE", "676724019", "Jose@outlok.com.br"),(30123318811, "Jose Johnson", 'F', (23, 3, 1995), "Avenida 28 BC, 215", "Aracaju", "SE", "676724019", "Emanuel@Pereira.com.br"),(88369672235, "Inacio Alves", 'F', (25, 3, 1936), "Rua Brasil Martinho Valle, 560", "Aracaju", "SE", "107892190", "Miguel@Pereira.com.br"),(27478099652, "Leonardo Rodrigues", 'M', (25, 10, 1988), "Travessa Tereza Cristina, 348", "Nossa Senhora do Socorro", "SE", "749200312", "Bernardo@Ferreira.com.br"),(72282496478, "Emanuel Pereira", 'F', (20, 4, 1939), "Travessa Jerusalem, 247", "Aracaju", "SE", "749200312", "Gustavo@hotmail.com.br"),(91683896248, "Jose Smith", 'F', (30, 4, 1943), "Rua Brasil Martinho Valle, 365", "Lagarto", "SE", "107892190", "Jose@uol.com.br"),(97916395954, "Jose Pereira", 'F', (20, 7, 1991), "Travessa Jerusalem, 46", "Nossa Senhora do Socorro", "SE", "150712500", "Emanuel@infonet.com.br"),(60523799951, "Ignacio Pereira", 'M', (7, 7, 1977), "Rua Brasil Martinho Valle, 998", "Nossa Senhora do Socorro", "SE", "888884567", "Jose@hotmail.com.br"),(45251664016, "Carlos Smith", 'M', (13, 7, 1964), "Avenida A, 272", "Aracaju", "SE", "676724019", "Gustavo@Pereira.com.br"),(91870465759, "Gustavo Oliveira", 'M', (28, 4, 1944), "Rua A, 204", "Aracaju", "SE", "107892190", "Davi@Ferreira.com.br"),(13508690972, "Ignacio Souza santos", 'M', (10, 9, 1970), "Travessa Jerusalem, 611", "Itabaiana", "SE", "150712500", "Miguel@Pereira.com.br"),(32829450561, "Jose Souza santos", 'M', (22, 6, 1937), "Rua Joana Ribeiro, 540", "Aracaju", "SE", "676724019", "Bernardo@Ferreira.com.br"),(66281994769, "Gabriel Rodrigues", 'M', (20, 3, 1936), "Travessa Tereza Cristina, 354", "Lagarto", "SE", "888884567", "Jose@uol.com.br"),(76976598156, "Gabriel Pereira", 'M', (11, 12, 1944), "Rua Brasil Martinho Valle, 998", "Lagarto", "SE", "888884567", "Gustavo@Alves.com.br"),(91696131497, "Inacio Santos", 'M', (26, 5, 1977), "Avenida 28 BC, 824", "Lagarto", "SE", "107892190", "Davi@Ferreira.com.br"),(73306091843, "Gustavo Johnson", 'M', (14, 10, 1953), "Travessa Tereza Cristina, 358", "Aracaju", "SE", "150712500", "Jose@Pereira.com.br"),(72103643100, "Carlos Rodrigues", 'F', (17, 9, 2016), "Rua Brasil Martinho Valle, 272", "Lagarto", "SE", "820101558", "Jose@outlok.com.br"),(35457034065, "Ignacio Smith", 'F', (4, 3, 1942), "Rua A, 280", "Itabaiana", "SE", "820101558", "Miguel@infonet.com.br"),(84655918512, "Leonardo Santos", 'F', (26, 5, 1942), "Travessa Tereza Cristina, 311", "Lagarto", "SE", "888884567", "Ignacio@Ferreira.com.br"),(66361636097, "Emanuel Pereira", 'F', (14, 1, 1972), "Avenida 28 BC, 912", "Nossa Senhora do Socorro", "SE", "676724019", "Leonardo@Ferreira.com.br"),(56399785622, "Gustavo Silva", 'F', (28, 7, 1974), "Rua Joana Ribeiro, 516", "Lagarto", "SE", "107892190", "Carlos@Pereira.com.br"),(71776925819, "Gabriel Silva", 'F', (26, 2, 2017), "Travessa Jerusalem, 257", "Nossa Senhora do Socorro", "SE", "150712500", "Ignacio@gmail.com.br"),(72077627524, "Gabriel Silva", 'M', (25, 9, 2000), "Rua Brasil Martinho Valle, 74", "Lagarto", "SE", "888884567", "Inacio@Pereira.com.br"),(98188814278, "Jose Silva", 'M', (18, 2, 1935), "Rua Joana Ribeiro, 870", "Nossa Senhora do Socorro", "SE", "150712500", "Jose@uol.com.br"),(2105747717, "Gustavo Alves", 'M', (30, 4, 1955), "Avenida 28 BC, 68", "Itabaiana", "SE", "888884567", "Jose@infonet.com.br"),(5462490372, "Emanuel Oliveira", 'M', (9, 1, 1992), "Travessa Tereza Cristina, 889", "Aracaju", "SE", "820101558", "Gustavo@infonet.com.br"),(9618817308, "Ignacio Alves", 'M', (24, 5, 2003), "Travessa Jerusalem, 33", "Nossa Senhora do Socorro", "SE", "820101558", "Jose@Pereira.com.br"),(25003392400, "Gabriel Rodrigues", 'M', (29, 7, 2012), "Travessa Tereza Cristina, 203", "Aracaju", "SE", "107892190", "Gustavo@Alves.com.br"),(77873720221, "Jose Pereira", 'M', (27, 3, 1951), "Rua Joana Ribeiro, 701", "Itabaiana", "SE", "820101558", "Miguel@outlok.com.br"),(27243025429, "Gustavo Oliveira", 'F', (5, 3, 1936), "Travessa Tereza Cristina, 224", "Itabaiana", "SE", "107892190", "Gabriel@uol.com.br"),(16213902712, "Ignacio Santos", 'F', (5, 6, 1980), "Rua Brasil Martinho Valle, 49", "Aracaju", "SE", "749200312", "Davi@infonet.com.br"),(54204962073, "Gustavo Pereira", 'F', (8, 5, 2005), "Travessa Tereza Cristina, 691", "Lagarto", "SE", "888884567", "Jose@hotmail.com.br"),(33529650641, "Leonardo Santos", 'F', (2, 11, 2018), "Rua Brasil Martinho Valle, 613", "Itabaiana", "SE", "749200312", "Emanuel@Ferreira.com.br"),(67733182165, "Carlos Silva", 'F', (24, 12, 2015), "Avenida 28 BC, 829", "Itabaiana", "SE", "676724019", "Bernardo@Ferreira.com.br"),(92701485891, "Emanuel Smith", 'F', (6, 2, 1948), "Rua Joana Ribeiro, 531", "Aracaju", "SE", "150712500", "Davi@outlok.com.br"),(52993562899, "Gabriel Souza santos", 'F', (27, 10, 1986), "Travessa Jerusalem, 918", "Lagarto", "SE", "107892190", "Inacio@hotmail.com.br"),(64078372212, "Carlos Santos", 'F', (14, 6, 1936), "Rua Brasil Martinho Valle, 740", "Aracaju", "SE", "676724019", "Leonardo@gmail.com.br"),(42526230308, "Emanuel Rodrigues", 'M', (9, 8, 2002), "Rua Joana Ribeiro, 302", "Nossa Senhora do Socorro", "SE", "749200312", "Gustavo@hotmail.com.br"),(94259444688, "Leonardo Ferreira", 'M', (9, 12, 1992), "Rua A, 125", "Itabaiana", "SE", "888884567", "Jose@Pereira.com.br"),(59984593668, "Leonardo Santos", 'M', (14, 8, 1931), "Avenida A, 596", "Nossa Senhora do Socorro", "SE", "107892190", "Leonardo@hotmail.com.br")]

-- item a) Cadastramento de um cidadão no sistema.  Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
addCadastroSUS :: Cidadao -> CadastroSUS -> CadastroSUS
addCadastroSUS myCidadao myDataBase
    | checkCPFSUS (getCPFSUS myCidadao) myDataBase = error "Cidadao  jah existente nesse banco"
    | otherwise = (:) myCidadao myDataBase

----------------------Funcoes Auxiliares
getCPFSUS :: Cidadao -> CPF
getCPFSUS (myCPF, _, _, _, _, _, _, _, _) = myCPF

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
    where posicao = [ position | (position, cidadao) <- (posicionarCidadaoLista myDataBase), (getCPFSUS cidadao)  == myCPF]

--item c) Quando um cidadão falece, a família tem que notificar o fato em um posto de saúde, para que ele seja retirado do cadastro corrente do SUS. Como há uma verificação do atestado de óbito, isto só pode ser feito no posto. O sistema precisará da função abaixo. Se o CPF existir no cadastro corrente do SUS, o registro do cidadão deve ser completamente excluído, gerando um novo cadastro sem os dados deste cidadão. Se o CPF não existir, uma mensagem de erro, usando error, sinalizando que o cidadão não pertence ao cadastro deve ser exibida.
removeSUS :: CPF -> CadastroSUS -> CadastroSUS
removeSUS myCPF myDataBase 
    | not (checkCPFSUS myCPF myDataBase) = error "Esse cidadao morto nao existe nesse banco"  --verificar se o CPF da pessoa morta existe
    | otherwise = [humanoSUS | humanoSUS <- myDataBase, myCPF /= (getCPFSUS humanoSUS)]

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
cidadaosPorMunicipioIdade myDataBase myMunicipio dataAtual faixasIdade = length [humanoSUS | humanoSUS <- myDataBase, myMunicipio == (getMunicipio humanoSUS),(idadeNaFaixa humanoSUS faixasIdade dataAtual)]

--Retorna a quantidade de cidadaoes por Estado
cidadaosPorEstadoIdade :: CadastroSUS -> Estado -> Data -> FaixaIdade -> Quantidade
cidadaosPorEstadoIdade myDataBase myState dataAtual faixasIdade = length [humanoSUS | humanoSUS <- myDataBase, myState == (getState humanoSUS), (idadeNaFaixa humanoSUS faixasIdade dataAtual)]

----------------------Funcoes Auxiliares
getMunicipio :: Cidadao -> Municipio
getMunicipio (_, _, _, _, _, myMunicipio, _, _, _) = myMunicipio

getState :: Cidadao -> Estado
getState (_, _, _, _, _, _, myState, _, _) = myState

getDataNasc :: Cidadao -> DataNasc
getDataNasc (_, _, _, myNasci, _, _, _, _, _) = myNasci 

--Subtrair DataAtual pela Data de Nascimento
--Se a data de nascimento estiver antes(ser menor) do dia 27 e do mes 09, a pessoa ja fez aniversario, se não, ela ainda é um ano mais jovem
getIdade :: Cidadao -> Data ->Int
getIdade cidadao dataAtual 
                | (myMes < mesAtual) || (myMes == mesAtual) && (myDia < diaAtual) =  anoAtual - myAno - 1 --dia menor que dia Atual, e mes menor que mes Atual, faz um calculo normal de idade
                | otherwise  = anoAtual - myAno 
                where
                    (myDia, myMes, myAno) = (getDataNasc cidadao)
                    (diaAtual, mesAtual, anoAtual) = dataAtual

idadeNaFaixa :: Cidadao -> FaixaIdade -> Data -> Bool
idadeNaFaixa humanoSUS faixasIdade myData = (getIdade humanoSUS myData >= (fst faixasIdade)) && (getIdade humanoSUS myData <= (snd faixasIdade))

--item e) Pode ser interessante também gerar uma lista da quantidade de cidadãos por faixas de idade para um dado município ou estado. As faixas de idade inicialmente previstas. O gestor pode escolher todas ou algumas destas faixas para gerar a lista. O gestor pode também, a depender das características de seu município, escolher outras faixas, já que a faixa é um parâmetro da função. Caso o gestor decida, por exemplo, coletar dados para uma idade específica, digamos 25 anos, ele deve informar a faixa (25, 25).

--Retorna a lista do municipio formatada lindamente
listaMunicipioFaixas :: CadastroSUS -> Municipio -> Data -> [FaixaIdade] -> IO()
listaMunicipioFaixas myDataBase myMunicipio dataAtual listaFaixasIdade = putStrLn ("MUNICIPIO: " ++  myMunicipio ++ "\nFAIXA IDADES        QUANTIDADE\n" ++ (formataLinhas (geraListaMunicipioFaixas myDataBase myMunicipio dataAtual listaFaixasIdade)) ++ (formataTotal (geraListaMunicipioFaixas myDataBase myMunicipio dataAtual listaFaixasIdade)))

--Retorna a lista do estado formatada lindamente
listaEstadoFaixas :: CadastroSUS -> Estado -> Data -> [FaixaIdade] -> IO()
listaEstadoFaixas myDataBase myState dataAtual listaFaixasIdade = putStrLn ("ESTADO: " ++ myState ++ "\nFAIXA IDADES        QUANTIDADE\n" ++ (formataLinhas (geraListaEstadoFaixas myDataBase myState dataAtual listaFaixasIdade)) ++ (formataTotal (geraListaEstadoFaixas myDataBase myState dataAtual listaFaixasIdade)))
--Estas funções precisam de funções auxiliares para gerar uma lista de quantidades por faixas de idade, para depois gerar a exibição usando as funções do item (f).
geraListaMunicipioFaixas :: CadastroSUS -> Municipio -> Data -> [FaixaIdade] -> [(FaixaIdade, Quantidade)]
geraListaMunicipioFaixas myDataBase myMunicipio dataAtual listaFaixasIdade = [(faixasIdade, quantidade) | faixasIdade <- listaFaixasIdade, quantidade <- [cidadaosPorMunicipioIdade myDataBase myMunicipio dataAtual faixasIdade]] 
    
geraListaEstadoFaixas :: CadastroSUS -> Estado -> Data -> [FaixaIdade] -> [(FaixaIdade, Quantidade)]
geraListaEstadoFaixas myDataBase myState dataAtual listaFaixasIdade = [(faixasIdade, quantidade) | faixasIdade <- listaFaixasIdade,quantidade <- [cidadaosPorEstadoIdade myDataBase myState dataAtual faixasIdade]]

--item f)A lista do município ou estado deve obedecer à formatação, descrita a seguir. O cabeçalho segue o formato abaixo, onde nome é o nome do município ou estado informado na função
--Além do cadastro no sistema SUS, haverá um cadastro dos cidadãos vacinados. Este cadastro está definido a seguir
--Primeiro Ponto: Formatação do valor inteiro que representa a quantidade para incluir os espaços à esquerda, para que a justificação à direita com a palavra QUANTIDADE ocorra.
type QuantidadeFormatada = String
formataQuant :: Quantidade -> QuantidadeFormatada
formataQuant qtd = "                  " ++ show qtd

--Segundo Ponto: Formatação de uma linha da faixa de idade. A saída desta função será uma string com o formato de uma linha da tabela anterior.
type LinhaFormatada = String
formataUmaLinha :: (FaixaIdade, Quantidade)-> LinhaFormatada
formataUmaLinha (listaFaixasIdade, qtd) 
    |((fst listaFaixasIdade) < 10 || (snd listaFaixasIdade < 10)) = (show (fst listaFaixasIdade)) ++ " - " ++ (show (snd listaFaixasIdade)) ++ " " ++ formataQuant qtd
    | otherwise = (show (fst listaFaixasIdade)) ++ " - " ++ (show (snd listaFaixasIdade)) ++ formataQuant qtd

--Terceiro Ponto: Formatação de todas as linhas das faixas de idade. Esta função usará a função anterior, acrescentará \n ao final de cada linha formatada e concatenará todas as linhas, gerando uma única string.
type LinhasFormatadas = String
formataLinhas :: [(FaixaIdade, Quantidade)] -> LinhasFormatadas
formataLinhas listaFaixasIdadeComQtd = addListaBarraN [formataUmaLinha faixasIdadeComQtd | faixasIdadeComQtd <- listaFaixasIdadeComQtd] 

--Quarto Ponto: Formatação da linha de totalização
type TotalFormatado = String
formataTotal :: [(FaixaIdade,Quantidade)] -> TotalFormatado
formataTotal listaFaixasIdadeComQtd = "\nTOTAL                    " ++ (show (findTotal listaFaixasIdadeComQtd)) 
--Somar a quantidade de todas as faixas
findTotal :: [(FaixaIdade,Quantidade)] -> Int
findTotal listaFaixasIdadeComQtd = sum [qtd |(faixasIdadeComQtd,qtd) <- listaFaixasIdadeComQtd]

----------------------Funcoes Auxiliares
--Escreva um função que dada uma string, devolva a mesma string com o caracter \n ao final. Ex: se a entrada for “gato” retornará “gato\n”.
addBarraN :: String -> String 
addBarraN palavra = palavra ++ "\n"

--Use a questão anterior, para construir a função que dada uma lista de strings devolve uma única string  contendo a concatenação  das srings da lista fornecida, tal que estas strings estejam separadas por \n. Ex: se a entrada for [“gato”, “e”, “rato”] retornará “gato\ne\nrato\n”
addListaBarraN :: [String] -> String
addListaBarraN lista = concat [addBarraN palavra | palavra <- lista]

----------------------VACINACAO PELO SUS
type Vacinados = [Vacinado]
--Cada item desse cadastro, Vacinado, é da forma
type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)

bancoDeVacinados :: Vacinados --CPF, [(Vacina, Data)]
bancoDeVacinados = [(26716347665, [("AstraZeneca", (02, 07, 2021)), ("AstraZeneca", (01, 08, 2021))]), (88888888888, [("Pfizer", (09, 09, 2021))]), (10101010101, [("CoronaVac", (01, 01, 2021)), ("CoronaVac", (01, 02, 2021))]),(87717347115, [("CoronaVac", (01, 01, 2021)), ("CoronaVac", (01, 02, 2021))]), (99999999999, [("Janssen", (01, 08, 2021)), ("Janssen", (01, 08, 2021))])]

--item g)Para realizar esta aplicação, procede-se da forma descrita a seguir e algumas funções auxiliares são necessárias. Inicialmente é verificado se o cidadão já tomou uma dose de vacina. Em caso afirmativo, usando error, exibe uma mensagem de que a primeira dose já foi aplicada. Caso contrário, é verificado se o usuário está cadastrado no sistema SUS. Se não estiver cadastrado, exibe uma mensagem de erro sinalizando o problema. Se estiver, checa se a idade é consistente com a faixa de idade de vacinação corrente. Se não for, exibe uma mensagem de erro sinalizando o problema. Se for, checa se o município é coerente com o município do cadastro SUS. Se não for, exibe uma mensagem de erro para ele atualizar os dados do SUS, pois só é permitida vacinação para residentes no município. Se for, adiciona o usuário no cadastro de vacinados. No momento da adição serão informados os dados constantes em Vacinado. Quando a vacina for Janssen, a tupla Dose deve vir duplicada na lista Doses, sinalizando que o paciente foi completamente imunizada
aplicaPrimDose:: CPF -> CadastroSUS -> FaixaIdade -> Municipio -> Data -> Vacina -> Data -> Vacinados -> Vacinados
aplicaPrimDose myCPF myDataBase faixasIdade myMunicipio dataAtual myVacina myDateVacina myVacinados 
    | not (checkCPFSUS myCPF myDataBase) = error "Cidadao NAO existente para esse banco"
    | (jaTomouPriDose myCPF myVacinados) = error "cidadao JAH tomou a primeira dose"
    | not (idadeAdequada myCPF myDataBase dataAtual faixasIdade) = error "Cidadao com idade nao compativel para essa faixa"
    | not (checkMunicipioVacinacao myCPF myDataBase myMunicipio) = error "Cidado nao pertence ao municipio para a vacinacao"
    | "Janssen" == myVacina = (:) (myCPF, [(myVacina, myDateVacina), (myVacina, myDateVacina)]) myVacinados
    | otherwise = (:) (myCPF, [(myVacina, myDateVacina)]) myVacinados

----------------------Funcoes Auxiliares
--Verificar se usuario ja tomou primeiro dose
--Primeiro ver se a lista veio vazio, se nao veio(False) eh porque a primeira dose foi tomada, entao inverto o bool para True athena
jaTomouPriDose :: CPF -> Vacinados -> Bool
jaTomouPriDose myCPF myVacinados = not ([] == [doses | (cpf, doses) <- myVacinados, myCPF == cpf])

--Verificar se a idade para vacina eh adequada
---Primeiro ver se a lista veio vazio, se nao veio(False), eh porque a pessoa esta apata a receber a dose, entao inverto o bool (True)
idadeAdequada :: CPF -> CadastroSUS -> Data -> FaixaIdade -> Bool
idadeAdequada myCPF myDataBase dataAtual faixasIdade = not ([] ==  [humanoSUS | humanoSUS <- myDataBase, (getCPFSUS humanoSUS) == myCPF, (getIdade humanoSUS dataAtual) >= (fst faixasIdade), (getIdade humanoSUS dataAtual) <= (snd faixasIdade)])

--Verificar se o municipio da vacinacao esta certo
-----Primeiro ver se a lista veio vazio, se nao veio(False), eh porque a pessoa esta no Municipio e esta apata a receber a dose, entao inverto o bool (True)
checkMunicipioVacinacao :: CPF -> CadastroSUS -> Municipio -> Bool
checkMunicipioVacinacao myCPF myDataBase myMunicipio = not ([] ==  [cidadao | cidadao <- myDataBase, (getCPFSUS cidadao) == myCPF, (getMunicipio cidadao) == myMunicipio])

--item h)Para realizar a segunda dose, faz-se necessário checar se o CPF consta do cadastro de vacinados. Se não estiver, usando error, exibe uma mensagem de erro reportando o problema. Se estiver, é verificado se o cidadão já tomou a segunda dose. Se já  tomou, exibe uma mensagem de erro. Caso contrário, checa se a data informada é maior que a da primeira dose. Se não for, exibe uma mensagem de erro. Se for, o cadastro de vacinados é atualizado e um novo cadastro é gerado, inserindo-se a tupla Dose no final da lista Doses, para um dado cidadão. Os dados dos demais cidadãos permanecem inalterados.    
aplicaSeguDose :: CPF -> Data -> Vacinados -> Vacinados
aplicaSeguDose myCPF myDateVacina myVacinados
    | not (checkCPFVacinados myCPF myVacinados) = error "Cidadao NAO existente no banco de vacinados"
    | ((getDosesTomadas myCPF myVacinados) == 2) = error "cidadao JAH tomou DUAS doses"
    | ((getDosesTomadas myCPF myVacinados) > 2) = error "Como tu tomou mais de duas vacinas?"
    | not (dataSeguDoseValida myCPF myDateVacina myVacinados) = error "Datas nao fazem sentidos" 
    | otherwise = comeco ++ dadoNovaVacina ++ fim
    where 
        position = (findPosVacinado myCPF myVacinados)
        comeco = take (position - 1) myVacinados
        fim = drop position myVacinados 
        dadoNovaVacina = [(cpf, [(vacina, novaData), (vacina, myDateVacina)]) | (cpf, [(vacina, novaData)]) <- myVacinados, myCPF == cpf]

----------------------Funcoes Auxiliares
----Para cadastrar um novo cidadao para vacinar, inicialmente é checado se o CPF já existe ou não no sistema com a função 
checkCPFVacinados :: CPF -> Vacinados -> Bool
checkCPFVacinados myCPF myVacinados = or [myCPF == cpfMyVacinados | (cpfMyVacinados, _) <- myVacinados]

--Ai eu conto quantas vacinas tem nessa lista
getDosesTomadas :: CPF -> Vacinados -> Int
getDosesTomadas myCPF myVacinados = length (getVacinaData myCPF myVacinados)

--Verificar se data de aplicacao da primeira dose vem depois da segunda
dataSeguDoseValida :: CPF -> Data -> Vacinados -> Bool
dataSeguDoseValida myCPF myDateVacina myVacinados = not ([] ==  [dataNova | (cpf, [(vacina, dataNova)]) <- myVacinados, myCPF == cpf, dataDepois myDateVacina dataNova])

----Atribuir um valor(indixe) para cada cidadao que foi vacinado no "banco de dados" que tem os usuarios vacinados
posicionarVacinadosLista :: Vacinados -> [(Int, Vacinado)]
posicionarVacinadosLista myVacinados = zip posicioes myVacinados 
    where posicioes = [1..(length myVacinados)]

--Encontrar a posicao do cidadao vacinado com base no seu CPF
findPosVacinado :: CPF -> Vacinados -> Int
findPosVacinado myCPF myVacinados 
    | posicao == [] = 0
    | otherwise = head posicao
    where posicao = [position | (position, vacinado) <- (posicionarVacinadosLista myVacinados), (fst vacinado) == myCPF]

--Verificar se usuario ja tomou primeiro dose
--Primeiro pega a lista que possuia como unico elemento(por isso o head, já que é so um elemento) uma lista que tem tuplas de vacinas e datas
getVacinaData :: CPF -> Vacinados -> Doses
getVacinaData myCPF myVacinados =  head [dosesTomadas | (cpf, dosesTomadas) <- myVacinados, myCPF == cpf]

--Verificar se uma data venho depois da outra
dataDepois :: Data -> Data -> Bool
dataDepois data1 data2 
    | (third data1) > (third data2) = True --Primeiro compara os anos
    | (third data1 == third data2) && (second data1 > second data2) = True --Verifica os meses com data de mesmo ano
    | (third data1 == third data2) && (second data1 == second data2) && (first data1 > first data2) = True --Verifica os dias e os meses iguais,  
    | otherwise = False 

--Descobrir a posicao de um tripla
first :: (a, b, c) -> a
first (a, _, _c) = a

second :: (a, b, c) -> b
second (_, b, _) = b

third :: (a, b, c) -> c
third (_, _, c) = c

-- item i) Pode ser necessária alguma atualização no cadastro de vacinados. Por exemplo, pode ser necessário consertar o nome da vacina que foi informada incorretamente. Para isso, seria necessária a função abaixo onde o nome correto da vacina é informado, para um dado CPF, numa dada dose. Caso o CPF não conste do cadastro de vacinados, exibe uma mensagem de erro. Caso contrário, se o número da dose informado for superior ao tamanho da lista Doses, uma mensagem de erro deve ser exibida sinalizando que aquela dose ainda não foi ministrada para aquele cidadão. 
atualizaVacina:: CPF -> TipoDose -> Vacina -> Vacinados -> Vacinados
atualizaVacina myCPF myTipoDose myVacina myVacinados 
    --Verificar se CPF existe no banco de Cadastros
    | not (checkCPFVacinados myCPF myVacinados) = error "Cidadao NAO existente no banco de vacinados"
    --Caso nao tenha aplica nenhuma dose
    | ((getDosesTomadas myCPF myVacinados) < 1) = error "Cidadao NAO TOMOU NENHUMA vacina ainda"
    --Caso so tenha tomado uma dose, atualiza essa uma dose
    |((getDosesTomadas myCPF myVacinados) == 1) = 
        comeco ++ dadoAtualizadoUmaDose ++ fim
    --Caso tenha sido duas doses, atualiza as duas doses
    |otherwise = comeco ++ dadoAtualizadoDuasDozes ++ fim
        where 
        position = (findPosVacinado myCPF myVacinados)
        comeco = take (position - 1) myVacinados
        fim = drop position myVacinados 
        --Caso so tenha tomado uma dose, atualiza essa uma dose
        dadoAtualizadoUmaDose = [(cpf, [(myVacina, data0)]) | (cpf, [(vacina0, data0)]) <- myVacinados, cpf == myCPF]
        --Caso tenha sido duas doses, atualiza as duas doses
        dadoAtualizadoDuasDozes  = [(cpf, [(myVacina, data1), (myVacina, data2)]) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, cpf == myCPF]   

-- item j) Quantidade de pessoas no município/estado vacinadas com uma dada dose. Para isso, para cada cidadão no cadastro de vacinados, é verificado se ele já tomou a dose informada no argumento da função. Em caso afirmativo, verifica-se se ele pertence ao município/estado informado, acessando-se o cadastro do SUS, e em caso afirmativo, o cidadão é considerado para o cômputo. 
quantidadeDoseMun :: Vacinados -> TipoDose -> Estado -> CadastroSUS -> Quantidade 
quantidadeDoseMun myVacinados myTipoDose myMunicipio myDataBase
      --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
      | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase))]
      --Para pessoas que tomaram a segunda dose
      | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase))]
      | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

quantidadeDoseEst :: Vacinados -> TipoDose -> Estado -> CadastroSUS -> Quantidade 
quantidadeDoseEst myVacinados myTipoDose myState myDataBase
      --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
      | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myState == (getState (getCidadao cpf myDataBase))]
       --Para pessoas que tomaram a segunda dose
      | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myState == (getState (getCidadao cpf myDataBase))]
      | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

----------------------Funcoes Auxiliares
getCidadao :: CPF -> CadastroSUS -> Cidadao
getCidadao myCPF myDataBase 
    | cidadaoEncontrado == [] = error "Cidadao nao encontrado"
    | otherwise = head cidadaoEncontrado 
    where cidadaoEncontrado = [cidadao | cidadao <- myDataBase, myCPF == (getCPFSUS cidadao)]

-- item k) Quantidade de pessoas no município/estado vacinadas por faixa etária e por dose. Procede-se como nos itens anteriores, mas agora se checa, além da dose e do município, a faixa de idade.
quantidadeMunIdDose :: Vacinados -> Municipio -> Data -> FaixaIdade -> TipoDose -> CadastroSUS -> Quantidade
quantidadeMunIdDose myVacinados myMunicipio dataAtual faixasIdade myTipoDose myDataBase 
    --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
    | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase)), idadeNaFaixa (getCidadao cpf myDataBase) faixasIdade dataAtual] 
   --Para pessoas que tomaram a segunda dose
    | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase)),idadeNaFaixa (getCidadao cpf myDataBase) faixasIdade dataAtual]
    | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

quantidadeEstIdDose :: Vacinados -> Municipio -> Data ->FaixaIdade -> TipoDose -> CadastroSUS -> Quantidade
quantidadeEstIdDose myVacinados myState dataAtual faixasIdade myTipoDose myDataBase 
    --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
    | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myState == (getState (getCidadao cpf myDataBase)), idadeNaFaixa (getCidadao cpf myDataBase) faixasIdade dataAtual] 
    --Para pessoas que tomaram a segunda dose
    | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myState == (getState (getCidadao cpf myDataBase)),idadeNaFaixa (getCidadao cpf myDataBase) faixasIdade dataAtual]
    | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

-- item l)Quantidade de pessoas no município/estado vacinadas por tipo de vacina e por dose
quantidadeMunVacDose :: Vacinados -> Municipio -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeMunVacDose myVacinados myMunicipio myVacina myTipoDose myDataBase 
    | (myTipoDose == 1) = length [humanoSUS | humanoSUS <- myDataBase, (getMunicipio humanoSUS) == myMunicipio, (findVacina humanoSUS myVacinados) == myVacina]
    --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
    | (myTipoDose == 2) = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase)), myVacina == vacina2]
    | otherwise = error "TipoDose informada esta incorreta"
quantidadeEstVacDose :: Vacinados -> Estado -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeEstVacDose myVacinados myState myVacina myTipoDose myDataBase 
    | (myTipoDose == 1) =  length [humanoSUS | humanoSUS <- myDataBase, (getState humanoSUS) == myState, (findVacina humanoSUS myVacinados) == myVacina]    
    | (myTipoDose == 2) = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myState == (getState (getCidadao cpf myDataBase)), myVacina == vacina2]
    | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

findVacina :: Cidadao -> Vacinados -> Vacina
findVacina humanoSUS myVacinados 
    | nomeVacina == [] = "Vacina nao Encontrada"
    | otherwise = head nomeVacina
    where nomeVacina =  [vacina | (cpf, listaDoses) <- myVacinados, (vacina, data1) <- listaDoses, cpf == (getCPFSUS humanoSUS)]
--item m) Quantidade de pessoas atrasadas na segunda dose no município/estado, dentre os cidadãos que pertencem ao cadastro de vacinados. Considere que a segunda dose da CoronaVac deve ser aplicada 21 dias após a primeira dose e a da Pfizer e AstraZeneca 90 dias após a primeira dose.
--quantidadeMunAtrasados :: Vacinados -> CadastroSUS -> Municipio -> Quantidade

--quantidadeEstAtrasados :: Vacinados -> CadastroSUS -> Estado -> Data -> Quantidade
--quantidadeEstAtrasados myVacinados myDataBase myState dataAtual = 

--diasAtrasados :: Data -> Data ->Quantidade 
--diasAtrasados dataVacina dataAtual = 

--Ai eu conto quantas vacinas tem nessa lista

--item n) Considerando os dados do cadastro SUS e do cadastro de vacinados elabore e projete duas outras consultas que podem ser feitas sobre esses dados.
--Estas funções precisam de funções auxiliares para gerar uma lista de quantidades por faixas de idade, para depois gerar a exibição usando as funções do item (f).
geraListaMunicipioGenero :: CadastroSUS -> Municipio -> [Genero] -> [(Genero, Quantidade)]
geraListaMunicipioGenero myDataBase myMunicipio listaGenero = [(genero, quantidade) | genero <- listaGenero, quantidade <- [cidadaosPorMunicipioGenero myDataBase myMunicipio genero]] 
    
geraListaEstadoGenero :: CadastroSUS -> Estado -> [Genero] -> [(Genero, Quantidade)]
geraListaEstadoGenero myDataBase myState listaGenero = [(genero, quantidade) | genero <- listaGenero, quantidade <- [cidadaosPorEstadoGenero myDataBase myState genero]]

----------------------Funcoes Auxiliares
--Retorna a quantidade de cidadaoes por Municipio e Genero
cidadaosPorMunicipioGenero :: CadastroSUS -> Municipio-> Genero -> Quantidade
cidadaosPorMunicipioGenero myDataBase myMunicipio myGender = length [humanoSUS | humanoSUS <- myDataBase, myMunicipio == (getMunicipio humanoSUS), myGender == (getGender humanoSUS)]

--Retorna a quantidade de cidadaoes por Estado e Genero
cidadaosPorEstadoGenero :: CadastroSUS -> Estado -> Genero -> Quantidade
cidadaosPorEstadoGenero myDataBase myState myGender = length [humanoSUS | humanoSUS <- myDataBase, myState == (getState humanoSUS), myGender == (getGender humanoSUS)]

getGender :: Cidadao -> Genero 
getGender (_, _, gender, _, _, _, _, _, _) = gender

--Primeiro Ponto: Formatação do valor inteiro que representa a quantidade para incluir os espaços à esquerda, para que a justificação à direita com a palavra QUANTIDADE ocorra.
type QuantidadeFormatada = String
formataQuant :: Quantidade -> QuantidadeFormatada
formataQuant qtd = "                  " ++ show qtd

--Segundo Ponto: Formatação de uma linha da faixa de idade. A saída desta função será uma string com o formato de uma linha da tabela anterior.
type LinhaFormatada = String
formataUmaLinhaGenero :: (FaixaIdade, Quantidade)-> LinhaFormatada
formataUmaLinha (listaFaixasIdade, qtd) 
    |((fst listaFaixasIdade) < 10 || (snd listaFaixasIdade < 10)) = (show (fst listaFaixasIdade)) ++ " - " ++ (show (snd listaFaixasIdade)) ++ " " ++ formataQuant qtd
    | otherwise = (show (fst listaFaixasIdade)) ++ " - " ++ (show (snd listaFaixasIdade)) ++ formataQuant qtd

--Terceiro Ponto: Formatação de todas as linhas das faixas de idade. Esta função usará a função anterior, acrescentará \n ao final de cada linha formatada e concatenará todas as linhas, gerando uma única string.
type LinhasFormatadas = String
formataLinhas :: [(FaixaIdade, Quantidade)] -> LinhasFormatadas
formataLinhas listaFaixasIdadeComQtd = addListaBarraN [formataUmaLinha faixasIdadeComQtd | faixasIdadeComQtd <- listaFaixasIdadeComQtd] 

--Quarto Ponto: Formatação da linha de totalização
type TotalFormatado = String
formataTotal :: [(FaixaIdade,Quantidade)] -> TotalFormatado
formataTotal listaFaixasIdadeComQtd = "\nTOTAL                    " ++ (show (findTotal listaFaixasIdadeComQtd)) 
--Somar a quantidade de todas as faixas
findTotal :: [(FaixaIdade,Quantidade)] -> Int
findTotal listaFaixasIdadeComQtd = sum [qtd |(faixasIdadeComQtd,qtd) <- listaFaixasIdadeComQtd]

--item o) Escolha uma das consultas propostas por você no item anterior e idealize como você exibiria um relatório com os dados dessa consulta, com uma formatação adequada, como exercitado no item (f). Projete a função que realiza a exibição do seu relatório.


--Cadastros pre-definidos para teste no cadastroSUS
maria :: Cidadao
maria = (53471688765, "Maria Silva", 'F', (21,12,1984),"Rua A, 202","Gloria", "SE", "999880300", "msilva@gmail.com")

marcos :: Cidadao
marcos = (53499988765, "Marcos Santos", 'M', (25,10,2000),"Rua D, 202","Aracaju", "SE", "999880501","msilva@gmail.com")