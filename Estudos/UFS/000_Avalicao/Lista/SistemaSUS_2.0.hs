module SistemaSUS_2Ponto0 where

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
bancoDeCadastros = 
    [(26716347665, "Paulo Souza", 'M', (11,10,1996),"Rua A, 202","Muribeca", "SE", "999997000", "psouza@gmail.com"),(87717347115, "Ana Reis",'F', (5,4,1970), "Rua B, 304","Aracaju", "SE", "999826004", "areis@gmail.com"),(99999999999, "Guilherme Alves", 'M', (02,07,2002),"Rua C, 405","Salgado", "SE", "999997044", "guilherme@gmail.com"), (88888888888, "Esmeralda Oliveira", 'F', (09,09,2003),"Rua D, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"), (10101010101, "Fernanda Menezes", 'F', (01,04,2000),"Rua E, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"),(24304304037, "Carlos Ferreira", 'M', (1, 6, 2019), "Avenida A, 617", "Aracaju", "SE", "888884567", "Davi@outlok.com.br"),(42618186808, "Gabriel Johnson", 'F', (24, 2, 2015), "Travessa Jerusalem, 194", "Itabaiana", "SE", "676724019", "Jose@outlok.com.br"),(30123318811, "Jose Johnson", 'F', (23, 3, 1995), "Avenida 28 BC, 215", "Aracaju", "SE", "676724019", "Emanuel@Pereira.com.br"),(88369672235, "Inacio Alves", 'F', (25, 3, 1936), "Rua Brasil Martinho Valle, 560", "Aracaju", "SE", "107892190", "Miguel@Pereira.com.br"),(27478099652, "Leonardo Rodrigues", 'M', (25, 10, 1988), "Travessa Tereza Cristina, 348", "Nossa Senhora do Socorro", "SE", "749200312", "Bernardo@Ferreira.com.br"),(72282496478, "Emanuel Pereira", 'F', (20, 4, 1939), "Travessa Jerusalem, 247", "Aracaju", "SE", "749200312", "Gustavo@hotmail.com.br"),(91683896248, "Jose Smith", 'F', (30, 4, 1943), "Rua Brasil Martinho Valle, 365", "Lagarto", "SE", "107892190", "Jose@uol.com.br"),(97916395954, "Jose Pereira", 'F', (20, 7, 1991), "Travessa Jerusalem, 46", "Nossa Senhora do Socorro", "SE", "150712500", "Emanuel@infonet.com.br"),(60523799951, "Ignacio Pereira", 'M', (7, 7, 1977), "Rua Brasil Martinho Valle, 998", "Nossa Senhora do Socorro", "SE", "888884567", "Jose@hotmail.com.br"),(45251664016, "Carlos Smith", 'M', (13, 7, 1964), "Avenida A, 272", "Aracaju", "SE", "676724019", "Gustavo@Pereira.com.br"),(91870465759, "Gustavo Oliveira", 'M', (28, 4, 1944), "Rua A, 204", "Aracaju", "SE", "107892190", "Davi@Ferreira.com.br"),(13508690972, "Ignacio Souza santos", 'M', (10, 9, 1970), "Travessa Jerusalem, 611", "Itabaiana", "SE", "150712500", "Miguel@Pereira.com.br"),(32829450561, "Jose Souza santos", 'M', (22, 6, 1937), "Rua Joana Ribeiro, 540", "Aracaju", "SE", "676724019", "Bernardo@Ferreira.com.br"),(66281994769, "Gabriel Rodrigues", 'M', (20, 3, 1936), "Travessa Tereza Cristina, 354", "Lagarto", "SE", "888884567", "Jose@uol.com.br"),(76976598156, "Gabriel Pereira", 'M', (11, 12, 1944), "Rua Brasil Martinho Valle, 998", "Lagarto", "SE", "888884567", "Gustavo@Alves.com.br"),(91696131497, "Inacio Santos", 'M', (26, 5, 1977), "Avenida 28 BC, 824", "Lagarto", "SE", "107892190", "Davi@Ferreira.com.br"),(73306091843, "Gustavo Johnson", 'M', (14, 10, 1953), "Travessa Tereza Cristina, 358", "Aracaju", "SE", "150712500", "Jose@Pereira.com.br"),(72103643100, "Carlos Rodrigues", 'F', (17, 9, 2016), "Rua Brasil Martinho Valle, 272", "Lagarto", "SE", "820101558", "Jose@outlok.com.br"),(35457034065, "Ignacio Smith", 'F', (4, 3, 1942), "Rua A, 280", "Itabaiana", "SE", "820101558", "Miguel@infonet.com.br"),(84655918512, "Leonardo Santos", 'F', (26, 5, 1942), "Travessa Tereza Cristina, 311", "Lagarto", "SE", "888884567", "Ignacio@Ferreira.com.br"),(66361636097, "Emanuel Pereira", 'F', (14, 1, 1972), "Avenida 28 BC, 912", "Nossa Senhora do Socorro", "SE", "676724019", "Leonardo@Ferreira.com.br"),(56399785622, "Gustavo Silva", 'F', (28, 7, 1974), "Rua Joana Ribeiro, 516", "Lagarto", "SE", "107892190", "Carlos@Pereira.com.br"),(71776925819, "Gabriel Silva", 'F', (26, 2, 2017), "Travessa Jerusalem, 257", "Nossa Senhora do Socorro", "SE", "150712500", "Ignacio@gmail.com.br"),(72077627524, "Gabriel Silva", 'M', (25, 9, 2000), "Rua Brasil Martinho Valle, 74", "Lagarto", "SE", "888884567", "Inacio@Pereira.com.br"),(98188814278, "Jose Silva", 'M', (18, 2, 1935), "Rua Joana Ribeiro, 870", "Nossa Senhora do Socorro", "SE", "150712500", "Jose@uol.com.br"),(2105747717, "Gustavo Alves", 'M', (30, 4, 1955), "Avenida 28 BC, 68", "Itabaiana", "SE", "888884567", "Jose@infonet.com.br"),(5462490372, "Emanuel Oliveira", 'M', (9, 1, 1992), "Travessa Tereza Cristina, 889", "Aracaju", "SE", "820101558", "Gustavo@infonet.com.br"),(9618817308, "Ignacio Alves", 'M', (24, 5, 2003), "Travessa Jerusalem, 33", "Nossa Senhora do Socorro", "SE", "820101558", "Jose@Pereira.com.br"),(25003392400, "Gabriel Rodrigues", 'M', (29, 7, 2012), "Travessa Tereza Cristina, 203", "Aracaju", "SE", "107892190", "Gustavo@Alves.com.br"),(77873720221, "Jose Pereira", 'M', (27, 3, 1951), "Rua Joana Ribeiro, 701", "Itabaiana", "SE", "820101558", "Miguel@outlok.com.br"),(27243025429, "Gustavo Oliveira", 'F', (5, 3, 1936), "Travessa Tereza Cristina, 224", "Itabaiana", "SE", "107892190", "Gabriel@uol.com.br"),(16213902712, "Ignacio Santos", 'F', (5, 6, 1980), "Rua Brasil Martinho Valle, 49", "Aracaju", "SE", "749200312", "Davi@infonet.com.br"),(54204962073, "Gustavo Pereira", 'F', (8, 5, 2005), "Travessa Tereza Cristina, 691", "Lagarto", "SE", "888884567", "Jose@hotmail.com.br"),(33529650641, "Leonardo Santos", 'F', (2, 11, 2018), "Rua Brasil Martinho Valle, 613", "Itabaiana", "SE", "749200312", "Emanuel@Ferreira.com.br"),(67733182165, "Carlos Silva", 'F', (24, 12, 2015), "Avenida 28 BC, 829", "Itabaiana", "SE", "676724019", "Bernardo@Ferreira.com.br"),(92701485891, "Emanuel Smith", 'F', (6, 2, 1948), "Rua Joana Ribeiro, 531", "Aracaju", "SE", "150712500", "Davi@outlok.com.br"),(52993562899, "Gabriel Souza santos", 'F', (27, 10, 1986), "Travessa Jerusalem, 918", "Lagarto", "SE", "107892190", "Inacio@hotmail.com.br"),(64078372212, "Carlos Santos", 'F', (14, 6, 1936), "Rua Brasil Martinho Valle, 740", "Aracaju", "SE", "676724019", "Leonardo@gmail.com.br"),(42526230308, "Emanuel Rodrigues", 'M', (9, 8, 2002), "Rua Joana Ribeiro, 302", "Nossa Senhora do Socorro", "SE", "749200312", "Gustavo@hotmail.com.br"),(94259444688, "Leonardo Ferreira", 'M', (9, 12, 1992), "Rua A, 125", "Itabaiana", "SE", "888884567", "Jose@Pereira.com.br"),(59984593668, "Leonardo Santos", 'M', (14, 8, 1931), "Avenida A, 596", "Nossa Senhora do Socorro", "SE", "107892190", "Leonardo@hotmail.com.br")]

--Questao 1, item a)O cidadão pode querer modificar algum desses dados, por exemplo, o número de telefone ou endereço. Para isto, precisamos de funções de atualização dos dados no cadastro, passando os novos dados. Para simplificar o sistema, vamos supor apenas as funções de atualização do endereço e do telefone, já que as demais atualizações seguiriam o mesmo princípio. No processo de atualização, o cadastro SUS informado será copiado para um novo cadastro SUS. Neste novo cadastro, os registros de outros cidadãos permanecerão inalterados e somente os dados do cidadão que está sendo atualizado sofrerão modificações.
atualizaEnderecoSUS :: CPF -> CadastroSUS -> Endereco -> CadastroSUS
atualizaEnderecoSUS myCPF [] newAdress = [] --Caso a lista venha vazia por ser vazia, dar erro
atualizaEnderecoSUS myCPF (humanoSUS:restoList)  newAdress --Caso ela tenha pessoas cadastradas
    | not (checkCPFSUS myCPF (humanoSUS:restoList)) = error "Esse cidadao nao existe nesse banco" --A pessoa nao esta no banco
    | (getCPFSUS humanoSUS == myCPF) = updateAdress humanoSUS newAdress : restoList --Se o CPF da pessoa esta no banco, atualiza o Endereço dela
    | otherwise = humanoSUS : atualizaEnderecoSUS myCPF restoList newAdress --Senao, continua a procurar por ele
    
----------------------Funcoes Auxiliares
checkCPFSUS :: CPF -> CadastroSUS -> Bool
checkCPFSUS myCPF [] = False
checkCPFSUS myCPF (humanoSUS:restoList)
    | getCPFSUS humanoSUS == myCPF = True
    | otherwise = checkCPFSUS myCPF restoList
    
getCPFSUS :: Cidadao -> CPF --Pega o CPF de um cidadao no Cadastro do SUS
getCPFSUS (myCPF, _, _, _, _, _, _, _, _) = myCPF

updateAdress :: Cidadao -> Endereco -> Cidadao --atualiza o enndereço do SUS
updateAdress (cpf,nome,gender,nasc,adress,muni,state,tel,email) newAdress = (cpf,nome,gender,nasc,newAdress,muni,state,tel,email)

--Questao 1, item b) Quando um cidadão falece, a família tem que notificar o fato em um posto de saúde, para que ele seja retirado do cadastro corrente do SUS. Como há uma verificação do atestado de óbito, isto só pode ser feito no posto. O sistema precisará da função abaixo. Se o CPF existir no cadastro corrente do SUS, o registro do cidadão deve ser completamente excluído, gerando um novo cadastro sem os dados deste cidadão. Se o CPF não existir, uma mensagem de erro, usando error, sinalizando que o cidadão não pertence ao cadastro deve ser exibida.
removeSUS :: CPF -> CadastroSUS -> CadastroSUS
removeSUS myCPF [] = [] --verificar se o CPF da pessoa morta existe
removeSUS myCPF (humanoSUS:restoList) 
    | not (checkCPFSUS myCPF (humanoSUS:restoList)) = error "Esse cidadao nao existe nesse banco" --A pessoa nao esta no banco
    | (getCPFSUS humanoSUS == myCPF) = restoList
    | otherwise = humanoSUS : removeSUS myCPF restoList

------Types para faixaIdade
type IdadeInicial = Int
type IdadeFinal = Int
type FaixaIdade = (IdadeInicial, IdadeFinal)
type Quantidade = Int

--Questao 1, item c)
geraListaMunicipioFaixas :: CadastroSUS -> Municipio -> Data -> [FaixaIdade] -> [(FaixaIdade, Quantidade)]
geraListaMunicipioFaixas myDataBase myMunicipio dataAtual [] = []
geraListaMunicipioFaixas myDataBase myMunicipio dataAtual (faixa:restoList) = (faixa, length (qtdListaFaixas myDataBase myMunicipio faixa dataAtual)) : geraListaMunicipioFaixas myDataBase myMunicipio dataAtual restoList

----------------------Funcoes Auxiliares
--Gera uma lista de cidadaos com determinda faixa
qtdListaFaixas :: CadastroSUS -> Municipio -> FaixaIdade -> Data-> [Cidadao]
qtdListaFaixas [] myMunicipio faixaIdade dataAtual = []
qtdListaFaixas (humanoSUS:restoList) myMunicipio faixaIdade dataAtual
 | (getMunicipio humanoSUS == myMunicipio) && (idadeNaFaixa humanoSUS faixaIdade dataAtual) = humanoSUS : qtdListaFaixas restoList myMunicipio  faixaIdade dataAtual
 | otherwise =  qtdListaFaixas restoList myMunicipio  faixaIdade dataAtual

getMunicipio :: Cidadao -> Municipio
getMunicipio (_, _, _, _, _, myMunicipio, _, _, _) = myMunicipio

getDataNasc :: Cidadao -> DataNasc
getDataNasc (_, _, _, myNasci, _, _, _, _, _) = myNasci 

--Calcula a idade do cidadao
getIdade :: Cidadao -> Data ->Int
getIdade cidadao dataAtual 
                | (myMes < mesAtual) || (myMes == mesAtual) && (myDia < diaAtual) =  anoAtual - myAno - 1 --dia menor que dia Atual, e mes menor que mes Atual, faz um calculo normal de idade
                | otherwise  = anoAtual - myAno 
                where
                    (myDia, myMes, myAno) = (getDataNasc cidadao)
                    (diaAtual, mesAtual, anoAtual) = dataAtual

--Verifica se um cidado esta na faixa de idade passada
idadeNaFaixa :: Cidadao -> FaixaIdade -> Data -> Bool
idadeNaFaixa humanoSUS faixasIdade myData = (getIdade humanoSUS myData >= (fst faixasIdade)) && (getIdade humanoSUS myData <= (snd faixasIdade))

------Types para vacinacao
type Vacinados = [Vacinado]
--Cada item desse cadastro, Vacinado, é da forma
type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)
type Vacinas = [Vacina]

vacinasTypes :: Vacinas 
vacinasTypes = ["AstraZeneca", "CoronaVac", "Pfizer"]

--Questao 1, item d)
bancoDeVacinados :: Vacinados --CPF, [(Vacina, Data)]
bancoDeVacinados = [( 26716347665, [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )] ),
    ( 87717347115, [ ("Pfizer",      (10,08,2021)) ] ),
    ( 99999999999, [ ("CoronaVac",   (10,02,2021)) ] ), 
    ( 88888888888, [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),
    ( 10101010101, [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
    ( 24304304037, [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),                      
    ( 42618186808, [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
    ( 30123318811, [ ("Pfizer",      (10,08,2021)) ] ),
    ( 88369672235, [ ("CoronaVac",   (10,02,2021)) ] ),    
    ( 27478099652, [ ("CoronaVac",   (10,02,2021)) ] ),    
    ( 72282496478, [ ("AstraZeneca", (10,02,2021)) ] ),
    ( 91683896248, [ ("Pfizer",      (10,08,2021)) ] ),                                 
    ( 88877766478, [ ("AstraZeneca", (10,02,2021)) ] ),                                 
    ( 78965412585, [ ("Pfizer",      (10,02,2021)) ] ),                                 
    ( 11144411717, [ ("AstraZeneca", (10,02,2021)) ] ),                                 
    ( 11122211511, [ ("CoronaVac",   (10,02,2021)) ] ),                                 
    ( 78965412885, [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )]),     
    ( 11122211515, [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),    
    ( 11133311516, [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )])  ]

aplicaPrimDose:: CPF -> CadastroSUS -> FaixaIdade -> Municipio -> Data -> Vacina -> Data -> Vacinados -> Vacinados
aplicaPrimDose myCPF [] faixasIdade myMunicipio dataAtual myVacina myDateVacina myVacinados = []
aplicaPrimDose myCPF (humanoSUS:restoList) faixasIdade myMunicipio dataAtual myVacina myDateVacina myVacinados
    | (receberPrimDose myCPF (humanoSUS:restoList) faixasIdade dataAtual myVacina myDateVacina myVacinados) && (getMunicipio humanoSUS == myMunicipio) =
        if (myVacina == "Janssen") then
            (myCPF, [(myVacina, myDateVacina), (myVacina, myDateVacina)]) : myVacinados
        else
            (myCPF, [(myVacina, myDateVacina)]) : myVacinados

    | otherwise = aplicaPrimDose myCPF restoList faixasIdade myMunicipio dataAtual myVacina myDateVacina myVacinados 

----------------------Funcoes Auxiliares
--Pessoa tem que estar no banco de cadastros
--Pessoa nao foi vacinada ainda
--Pessoa tem que estar na faixa de Idade adequada
receberPrimDose :: CPF -> CadastroSUS -> FaixaIdade -> Data -> Vacina -> Data -> Vacinados -> Bool
receberPrimDose myCPF [] faixasIdade dataAtual myVacina myDateVacina myVacinados = False
receberPrimDose myCPF (humanoSUS:restoList) faixasIdade dataAtual myVacina myDateVacina myVacinados 
   | (checkCPFSUS myCPF (humanoSUS:restoList)) && not (getCPFVacina myCPF myVacinados) && (idadeNaFaixa humanoSUS faixasIdade dataAtual) = True
   | otherwise = receberPrimDose  myCPF restoList faixasIdade dataAtual myVacina myDateVacina myVacinados

getCPFVacina :: CPF -> Vacinados -> Bool
getCPFVacina myCPF [] = False
getCPFVacina myCPF (humanoVac:restoList)
  | fst humanoVac == myCPF = True
  | otherwise = getCPFVacina myCPF restoList

--Questao 1, item e)
quantidadeDoseMun :: Vacinados -> TipoDose -> Municipio -> CadastroSUS -> Quantidade 
quantidadeDoseMun myVacinados myTipoDose myMunicipio myDataBase = length (getCidadaoDoseMun myVacinados myTipoDose myMunicipio myDataBase)

----------------------Funcoes Auxiliares
getCidadaoDoseMun :: Vacinados -> TipoDose -> Municipio -> CadastroSUS -> Vacinados 
getCidadaoDoseMun [] myTipoDose myMunicipio myDataBase = []
getCidadaoDoseMun (vacinado:restoList1) myTipoDose myMunicipio (humanoSUS:restoList2)
    | (length (snd vacinado) >= myTipoDose) && (getMunicipio  humanoSUS == myMunicipio) = vacinado : getCidadaoDoseMun restoList1 myTipoDose myMunicipio restoList2
    | otherwise = getCidadaoDoseMun restoList1 myTipoDose myMunicipio restoList2

--Questao 1, item f)
quantidadeEstIdDose :: Vacinados -> TipoDose -> Estado -> Data -> FaixaIdade -> CadastroSUS -> Quantidade
quantidadeEstIdDose myVacinados myState dataAtual faixasIdade myTipoDose myDataBase = length (getCidadaoDoseEst myVacinados myState dataAtual faixasIdade myTipoDose myDataBase)

----------------------Funcoes Auxiliares
getCidadaoDoseEst :: Vacinados -> TipoDose -> Estado -> Data -> FaixaIdade -> CadastroSUS -> Vacinados 
getCidadaoDoseEst [] myTipoDose myState dataAtual faixasIdade myDataBase = []
getCidadaoDoseEst (vacinado:restoList1) myTipoDose myState dataAtual faixasIdade (humanoSUS:restoList2)
    | (length (snd vacinado) >= myTipoDose) && (getState humanoSUS == myState) && (idadeNaFaixa humanoSUS faixasIdade dataAtual) = vacinado : getCidadaoDoseEst restoList1 myTipoDose myState dataAtual faixasIdade restoList2
    | otherwise = getCidadaoDoseEst restoList1 myTipoDose myState dataAtual faixasIdade restoList2

getState :: Cidadao -> Estado
getState (_, _, _, _, _, _, myState, _, _) = myState

--Questao 1, item g)
quantidadeEstVacDose :: Vacinados -> Estado -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeEstVacDose myVacinados myState myVacina myTipoDose myDataBase = length (getEstVacDose myVacinados myState myVacina myTipoDose myDataBase)

----------------------Funcoes Auxiliares
getEstVacDose :: Vacinados -> Estado -> Vacina -> TipoDose -> CadastroSUS -> Vacinados 
getEstVacDose [] myState myVacina myTipoDose myDataBase = []
getEstVacDose (vacinado:restoList1) myState myVacina myTipoDose (humanoSUS:restoList2)
    | (vacinaType == myVacina) && (length (snd vacinado) >= myTipoDose) && (getState humanoSUS == myState) = vacinado : getEstVacDose restoList1 myState myVacina myTipoDose restoList2
    | otherwise = getEstVacDose restoList1 myState myVacina myTipoDose restoList2
    where 
        vacinaType = (fst (head (snd vacinado)))

--Novos Types para questão 02
type Populacao = Int
type PopMun = (Municipio, [(FaixaIdade, Populacao)])
type PopEstado = (Estado, [PopMun])
type PopPais = [PopEstado]

-----[PopEstado]
---------[(Estado,[PopMun])]
------------[(Estado,[(Municipio,[(FaixaIdade, POpulação)])])]
bancoPais :: PopPais
bancoPais = [("A",[("Cidade A",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)]),
              ("Cidade B",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 1)]),
              ("Cidade C",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)]),
              ("Cidade D",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 1)]),
              ("Cidade E",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)])]),
        ("B",[("Cidade AB",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 1)]),
              ("Cidade BC",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)]),
              ("Cidade CD",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 1)]),
              ("Cidade DE",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)]),
              ("Cidade EF",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 1)])]),
        ("C",[("Cidade ABC",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)]),
              ("Cidade BCD",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 1)]),
              ("Cidade CDE",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)]),
              ("Cidade DEF",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 1)]),
              ("Cidade EFG",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)])])]

--Questao 2
qtdParaVacinar ::  CadastroSUS -> Int -> Municipio -> Int -> Data -> (Int,Int)
qtdParaVacinar myDataBase lastAge myMunicipio qtdVacinas dataAtual = 
    (maiorIdade, menorIdade)
    where
        maiorIdade =
        menorIdade = 

----------------------Funcoes Auxiliares
controlaQtdVacinas :: CadastroSUS -> Int -> Municipio -> Int -> Data -> [Int]
controlaQtdVacinas [] lastAge myMunicipio qtdVacinas dataAtual = []
controlaQtdVacinas (humanoSUS:restoList) 0 myMunicipio qtdVacinas dataAtual = []
controlaQtdVacinas (humanoSUS:restoList) ultimaIdade myMunicipio qtdVacinas dataAtual 
    | 

findMenorIdade :: CadastroSUS -> Int -> Data -> Municipio -> CadastroSUS
findMenorIdade [] lastAge dataAtual myMunicipio = []
findMenorIdade (humanoSUS:restoList) lastAge dataAtual myMunicipio
    | getIdade 

