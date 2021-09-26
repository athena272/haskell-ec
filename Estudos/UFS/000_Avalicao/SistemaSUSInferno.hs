module SistemaSUSInferno where

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
bancoDeCadastros = [(26716347665, "Paulo Souza", 'M', (11,10,1996),"Rua A, 202","Muribeca", "SE", "999997000", "psouza@gmail.com"),(87717347115, "Ana Reis",'F', (5,4,1970), "Rua B, 304","Aracaju", "SE", "999826004", "areis@gmail.com"),(99999999999, "Guilherme Alves", 'M', (02,07,2002),"Rua C, 405","Salgado", "SE", "999997044", "guilherme@gmail.com"), (88888888888, "Esmeralda Oliveira", 'F', (09,09,2003),"Rua D, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"), (10101010101, "Fernanda Menezes", 'F', (01,04,2000),"Rua E, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"),(24304304037, "Carlos Ferreira", 'M', (1, 6, 2019), "Avenida A, 617", "Aracaju", "SE", "888884567", "Davi@outlok.com.br"),(42618186808, "Gabriel Johnson", 'M', (24, 2, 2015), "Travessa Jerusalem, 194", "Itabaiana", "SE", "676724019", "Jose@outlok.com.br"),(30123318811, "Jose Johnson", 'M', (23, 3, 1995), "Avenida 28 BC, 215", "Aracaju", "SE", "676724019", "Emanuel@Pereira.com.br"),(88369672235, "Inacio Alves", 'M', (25, 3, 1936), "Rua Brasil Martinho Valle, 560", "Aracaju", "SE", "107892190", "Miguel@Pereira.com.br"),(27478099652, "Leonardo Rodrigues", 'M', (25, 10, 1988), "Travessa Tereza Cristina, 348", "Nossa Senhora do Socorro", "SE", "749200312", "Bernardo@Ferreira.com.br"),(72282496478, "Emanuel Pereira", 'M', (20, 4, 1939), "Travessa Jerusalem, 247", "Aracaju", "SE", "749200312", "Gustavo@hotmail.com.br"),(91683896248, "Jose Smith", 'M', (30, 4, 1943), "Rua Brasil Martinho Valle, 365", "Lagarto", "SE", "107892190", "Jose@uol.com.br"),(97916395954, "Jose Pereira", 'M', (20, 7, 1991), "Travessa Jerusalem, 46", "Nossa Senhora do Socorro", "SE", "150712500", "Emanuel@infonet.com.br"),(60523799951, "Ignacio Pereira", 'M', (7, 7, 1977), "Rua Brasil Martinho Valle, 998", "Nossa Senhora do Socorro", "SE", "888884567", "Jose@hotmail.com.br"),(45251664016, "Carlos Smith", 'M', (13, 7, 1964), "Avenida A, 272", "Aracaju", "SE", "676724019", "Gustavo@Pereira.com.br"),(91870465759, "Gustavo Oliveira", 'M', (28, 4, 1944), "Rua A, 204", "Aracaju", "SE", "107892190", "Davi@Ferreira.com.br"),(13508690972, "Ignacio Souza santos", 'M', (10, 9, 1970), "Travessa Jerusalem, 611", "Itabaiana", "SE", "150712500", "Miguel@Pereira.com.br"),(32829450561, "Jose Souza santos", 'M', (22, 6, 1937), "Rua Joana Ribeiro, 540", "Aracaju", "SE", "676724019", "Bernardo@Ferreira.com.br"),(66281994769, "Gabriel Rodrigues", 'M', (20, 3, 1936), "Travessa Tereza Cristina, 354", "Lagarto", "SE", "888884567", "Jose@uol.com.br"),(76976598156, "Gabriel Pereira", 'M', (11, 12, 1944), "Rua Brasil Martinho Valle, 998", "Lagarto", "SE", "888884567", "Gustavo@Alves.com.br"),(91696131497, "Inacio Santos", 'M', (26, 5, 1977), "Avenida 28 BC, 824", "Lagarto", "SE", "107892190", "Davi@Ferreira.com.br"),(73306091843, "Gustavo Johnson", 'M', (14, 10, 1953), "Travessa Tereza Cristina, 358", "Aracaju", "SE", "150712500", "Jose@Pereira.com.br"),(72103643100, "Carlos Rodrigues", 'M', (17, 9, 2016), "Rua Brasil Martinho Valle, 272", "Lagarto", "SE", "820101558", "Jose@outlok.com.br"),(35457034065, "Ignacio Smith", 'M', (4, 3, 1942), "Rua A, 280", "Itabaiana", "SE", "820101558", "Miguel@infonet.com.br"),(84655918512, "Leonardo Santos", 'M', (26, 5, 1942), "Travessa Tereza Cristina, 311", "Lagarto", "SE", "888884567", "Ignacio@Ferreira.com.br"),(66361636097, "Emanuel Pereira", 'M', (14, 1, 1972), "Avenida 28 BC, 912", "Nossa Senhora do Socorro", "SE", "676724019", "Leonardo@Ferreira.com.br"),(56399785622, "Gustavo Silva", 'M', (28, 7, 1974), "Rua Joana Ribeiro, 516", "Lagarto", "SE", "107892190", "Carlos@Pereira.com.br"),(71776925819, "Gabriel Silva", 'M', (26, 2, 2017), "Travessa Jerusalem, 257", "Nossa Senhora do Socorro", "SE", "150712500", "Ignacio@gmail.com.br"),(72077627524, "Gabriel Silva", 'M', (25, 9, 2000), "Rua Brasil Martinho Valle, 74", "Lagarto", "SE", "888884567", "Inacio@Pereira.com.br"),(98188814278, "Jose Silva", 'M', (18, 2, 1935), "Rua Joana Ribeiro, 870", "Nossa Senhora do Socorro", "SE", "150712500", "Jose@uol.com.br"),(2105747717, "Gustavo Alves", 'M', (30, 4, 1955), "Avenida 28 BC, 68", "Itabaiana", "SE", "888884567", "Jose@infonet.com.br"),(5462490372, "Emanuel Oliveira", 'M', (9, 1, 1992), "Travessa Tereza Cristina, 889", "Aracaju", "SE", "820101558", "Gustavo@infonet.com.br"),(9618817308, "Ignacio Alves", 'M', (24, 5, 2003), "Travessa Jerusalem, 33", "Nossa Senhora do Socorro", "SE", "820101558", "Jose@Pereira.com.br"),(25003392400, "Gabriel Rodrigues", 'M', (29, 7, 2012), "Travessa Tereza Cristina, 203", "Aracaju", "SE", "107892190", "Gustavo@Alves.com.br"),(77873720221, "Jose Pereira", 'M', (27, 3, 1951), "Rua Joana Ribeiro, 701", "Itabaiana", "SE", "820101558", "Miguel@outlok.com.br"),(27243025429, "Gustavo Oliveira", 'M', (5, 3, 1936), "Travessa Tereza Cristina, 224", "Itabaiana", "SE", "107892190", "Gabriel@uol.com.br"),(16213902712, "Ignacio Santos", 'M', (5, 6, 1980), "Rua Brasil Martinho Valle, 49", "Aracaju", "SE", "749200312", "Davi@infonet.com.br"),(54204962073, "Gustavo Pereira", 'M', (8, 5, 2005), "Travessa Tereza Cristina, 691", "Lagarto", "SE", "888884567", "Jose@hotmail.com.br"),(33529650641, "Leonardo Santos", 'M', (2, 11, 2018), "Rua Brasil Martinho Valle, 613", "Itabaiana", "SE", "749200312", "Emanuel@Ferreira.com.br"),(67733182165, "Carlos Silva", 'M', (24, 12, 2015), "Avenida 28 BC, 829", "Itabaiana", "SE", "676724019", "Bernardo@Ferreira.com.br"),(92701485891, "Emanuel Smith", 'M', (6, 2, 1948), "Rua Joana Ribeiro, 531", "Aracaju", "SE", "150712500", "Davi@outlok.com.br"),(52993562899, "Gabriel Souza santos", 'M', (27, 10, 1986), "Travessa Jerusalem, 918", "Lagarto", "SE", "107892190", "Inacio@hotmail.com.br"),(64078372212, "Carlos Santos", 'M', (14, 6, 1936), "Rua Brasil Martinho Valle, 740", "Aracaju", "SE", "676724019", "Leonardo@gmail.com.br"),(42526230308, "Emanuel Rodrigues", 'M', (9, 8, 2002), "Rua Joana Ribeiro, 302", "Nossa Senhora do Socorro", "SE", "749200312", "Gustavo@hotmail.com.br"),(94259444688, "Leonardo Ferreira", 'M', (9, 12, 1992), "Rua A, 125", "Itabaiana", "SE", "888884567", "Jose@Pereira.com.br"),(59984593668, "Leonardo Santos", 'M', (14, 8, 1931), "Avenida A, 596", "Nossa Senhora do Socorro", "SE", "107892190", "Leonardo@hotmail.com.br")]

-- item a) Cadastramento de um cidadão no sistema.  Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
addCadastroSUS :: Cidadao -> CadastroSUS -> CadastroSUS
addCadastroSUS myCidadao myDataBase
    | checkCPFSUS (getCPF myCidadao) myDataBase = error "Cidadao  jah existente nesse banco"
    | otherwise = (:) myCidadao myDataBase

----------------------Funcoes Auxiliares
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
cidadaosPorEstadoIdade myDataBase myState dataAtual faixasIdade = length [humanoSUS | humanoSUS <- myDataBase, myState == (getState humanoSUS), (getIdade humanoSUS dataAtual) >= (fst faixasIdade), (getIdade humanoSUS dataAtual) <= (snd faixasIdade)]

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
                | (myMes < mesAtual) || (myMes == mesAtual) && (myDia < diaAtual) =  anoAtual - myAno --dia menor que dia Atual, e mes menor que mes Atual, faz um calculo normal de idade
                | otherwise  = anoAtual - myAno - 1
                where
                    (myDia, myMes, myAno) = (getDataNasc cidadao)
                    (diaAtual, mesAtual, anoAtual) = dataAtual

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