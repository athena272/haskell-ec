--GUILHERME ROSÁRIO ALVES
--202100022784

import Data.Char

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

------Types para vacinacao
type Vacinados = [Vacinado]
--Cada item desse cadastro, Vacinado, é da forma
type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)
type Vacinas = [Vacina]

------Types para faixaIdade
type IdadeInicial = Int
type IdadeFinal = Int
type FaixaIdade = (IdadeInicial, IdadeFinal)
type Quantidade = Int

------Types para Pop e Arvore
type FixedFaixas = [FaixaIdade]
type Populacao = Int
type PopMun2 = (Municipio, [(FaixaIdade, Populacao)])
type PopEstado = (Estado, [PopMun2])
type PopPais = [PopEstado]
type UltimaIdade = Int
type Populacao2 = Int
type PopMun = (Municipio, Populacao2)
data Arv a =  NoNulo |  No PopMun (Arv PopMun) (Arv PopMun)
                      deriving (Eq, Ord, Show, Read)
                    

cadastro:: Arv PopMun
cadastro = No ("Olindina", 10) (No ("Maceio", 15) (No ("Aracaju", 20) NoNulo NoNulo) NoNulo) (No ("Sao Domingos", 8) NoNulo (No ("Sao Paulo", 40) NoNulo (No ("Tobias Barreto", 5) NoNulo NoNulo)))

bancoCadastros :: CadastroSUS
bancoCadastros = [
        (99988877566, "Cleytin da Silva"       , 'M', (31,12,2002), "Rua Josevaldo Neto, 333"        , "Aracaju"       , "SE", "(79) 9 9958 6041", "cleytin_estourado@gmail.com"        ),
        (88877766478, "Josineide Ferreira"     , 'F', (13,10,1990), "Rua Jose Elencar, 250"          , "Maceio"        , "AL", "(82) 9 9950 6762", "josineide_dos_paredoes@gmail.com"   ),
        (78965412585, "Raphaela Cardoso"       , 'X', (25,02,1999), "Rua Antonio Valentim, 76"       , "Tobias Barreto", "SE", "(79) 9 8876 0526", "rapha_cardoso@hotmail.com"          ),
        (78965412885, "Tim Maia "              , 'M', (20,05,1960), "Rua Rosario Batista Nunes, 102" , "Sao Paulo"     , "SP", "(11) 9 9688 5620", "contato_tim_maia@hotmail.com"       ),
        (11122211511, "Rosimar Ribeiro "       , 'M', (06,06,2002), "Av. Adelia Franco, 03"          , "Olindina"      , "BA", "(75) 9 9958 8041", "rosimar_ribeiro@gmail.com"          ),
        (11133311512, "Cauan da Silva "        , 'X', (15,08,1995), "Av. Cloves de Barros, 04"       , "Olindina"      , "BA", "(75) 9 9955 6762", "o_tal_do_cauan_estourado@gmail.com" ),
        (11144411713, "Maria do Rosario"       , 'X', (08,10,1955), "Av. 7 de Junho, 09"             , "Rio de Janeiro", "RJ", "(21) 9 8876 0527", "mariarosario@hotmail.com"           ),
        (11155511214, "Joaquina Maria "        , 'F', (25,10,1985), "Rua Socrates Cladionor, 199"    , "Manaus"        , "AM", "(92) 9 9688 5627", "contato_joaquinamaria@hotmail.com"  ),
        (11122211515, "Cladionor da Silva"     , 'X', (02,05,1950), "Av. Adelia Franco, 09"          , "Olindina"      , "BA", "(75) 9 9980 6041", "rosimar_ribeiro@gmail.com"          ),
        (11133311516, "Flavio Jukes Fernandes" , 'M', (20,08,1990), "Av. Ivo Carregosa, 16"          , "Aracaju"       , "SE", "(79) 9 9950 6782", "contato_jukes@gmail.com"            ),
        (11144411717, "Anderson Oliveira Lima" , 'X', (30,10,1940), "Rua Ovelarque Ramos, 250"       , "Sao Domingos"  , "SE", "(79) 9 8876 0026", "anderson_lolzeiro@hotmail.com"      ),
        (11155511218, "Luan Argolo Silva "     , 'M', (27,09,1999), "Rua Pitagoras , 345"            , "Tobias Barreto", "AM", "(92) 9 9608 5620", "luan.argolo@hgmail.com"             ) ]

bancoVacinados :: Vacinados
bancoVacinados = [  ( 99988877566, [ ("Pfizer",      (10,08,2021)) ] ),                                 -- "Aracaju" "SE"
                    ( 88877766478, [ ("AstraZeneca", (10,02,2021)) ] ),                                 -- "Maceio"  "AL"
                    ( 78965412585, [ ("Pfizer",      (10,02,2021)) ] ),                                 -- "Tobias Barreto" "SE"
                    ( 11144411717, [ ("AstraZeneca", (10,02,2021)) ] ),                                 -- "Sao Domingos" "SE"
                    ( 11122211511, [ ("CoronaVac",   (10,02,2021)) ] ),                                 -- "Olindina""BA"
                    ( 78965412885, [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )]),     -- "Sao Paulo" "SP"
                    ( 11122211515, [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),     -- "Olindina""BA"
                    ( 11133311516, [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )])  ]   -- "Aracaju" "SE"
        
----------------------Questao 01
questao01 :: CadastroSUS -> Vacinados -> IO ()
questao01 myDataBase myVacinados = do myCPF <- getLine
                                      if myCPF == "0" then print "Pesquisa Encerrada"
                                      else do saidaIO (read myCPF) myDataBase myVacinados
                                              questao01 myDataBase myVacinados
                                           
----------------------Funcoes Auxiliares
getCPFSUS :: Cidadao -> CPF --Pega o CPF de um cidadao no Cadastro do SUS
getCPFSUS (myCPF, _, _, _, _, _, _, _, _) = myCPF

getName :: Cidadao -> Nome --Pega o nome de um cidadao no Cadastro do SUS
getName (_, myName, _, _, _, _, _, _, _) = myName

getNameBanco :: CPF -> CadastroSUS -> Nome
getNameBanco myCPF myDataBase = concat $ map getName $ filter mesmoCPF myDataBase
    where
        mesmoCPF x = (myCPF == getCPFSUS x)

getTypeDose :: CPF -> Vacinados -> Doses
getTypeDose myCPF myVacinados = isJanssen $ concat $ map snd $ filter mesmoCPF myVacinados
    where
        mesmoCPF x = (myCPF == fst x)
        isJanssen [] = []
        isJanssen (x:xs) 
            | (fst x == "Janssen") = [x]
            | otherwise = x : isJanssen xs

geralToUpper ::  String -> String
geralToUpper = map toUpper

formataUmaLinhaDose :: Dose -> String
formataUmaLinhaDose (myVacina, dataVacina) = myVacina ++ ", " ++ dataEdit dataVacina
    where
        dataEdit (dia, mes, ano) = show dia ++ "." ++ show mes ++ "." ++ show ano

formataLinhasDose :: CPF -> Vacinados -> String
formataLinhasDose myCPF myVacinados = geralToUpper $ concat $ map  umaLinha lista
    where
        umaLinha x = formataUmaLinhaDose x ++ "\n" ++ "       "
        lista = getTypeDose myCPF myVacinados

saidaIO :: CPF ->  CadastroSUS -> Vacinados -> IO ()
saidaIO myCPF myDataBase myVacinados = putStrLn (myName ++ "\n" ++ myTypeDoses)
    where
        myName =  if null (getNameBanco myCPF myDataBase) then "Esse Cidadao Nao Existe"
                  else "NOME: " ++ getNameBanco myCPF myDataBase
        myTypeDoses = if null (formataLinhasDose myCPF myVacinados) then ""
                      else  "DOSES: " ++ formataLinhasDose myCPF myVacinados

----------------------Questao 02 Letra A
questao2A :: Arv PopMun -> CadastroSUS -> Vacinados -> IO ()
questao2A myArvore myDataBase myVacinados = saida
    where
        saida = resultadoFinal myArvore myDataBase myVacinados

----------------------Funcoes Auxiliares
pergunta :: String -> IO String
pergunta perg = do putStr perg
                   getLine 

resultadoFinal :: Arv PopMun -> CadastroSUS -> Vacinados -> IO ()     
resultadoFinal myArvore myDataBase myVacinados = saida
    where
        saida = do resposta <- pergunta "Municipio: "
                   if (not (isEmpty resposta)) then putStrLn ("Cidade: " ++ resposta ++ "\n" ++ "Percentual: " ++ numeroPercentual resposta myArvore myDataBase myVacinados) 
                   else error "Pesquisa Encerrada"

isEmpty :: String -> Bool
isEmpty lista = and $ map serZero lista
    where 
        serZero elemento = (' ' == elemento) 

getOrdem :: Arv PopMun -> [PopMun]
getOrdem NoNulo = []
getOrdem (No myMunicipio noEsquerdo noDireito) = (getOrdem noEsquerdo) ++ [myMunicipio] ++ (getOrdem noDireito)

numeroPercentual :: Municipio -> Arv PopMun -> CadastroSUS -> Vacinados -> String 
numeroPercentual myMunicipio myArvore myDataBase myVacinados = percentual (verifica myMunicipio myDataBase myVacinados ) (getMuniAltaOrdem myMunicipio myArvore) ++ "%" 

getMuniAltaOrdem :: Municipio -> Arv PopMun ->  Int
getMuniAltaOrdem myMunicipio myArvore = snd $ head $ filter getMuni (getOrdem myArvore)
    where
        getMuni (x, xs) = x == myMunicipio

getMunicipio :: Cidadao -> Municipio
getMunicipio (_, _, _, _, _, myMunicipio, _, _, _) = myMunicipio

verifica :: Municipio -> CadastroSUS -> Vacinados ->  Int
verifica myMunicipio myDataBase myVacinados = length $ checkVacAltaOrdem (map acharCPF $ filter acharMuni myDataBase) myVacinados
    where
        acharCPF humanoSUS = getCPFSUS humanoSUS
        acharMuni cidadao = (getMunicipio cidadao == myMunicipio)

checkVacAltaOrdem :: [CPF] -> Vacinados -> [(CPF, Doses)]
checkVacAltaOrdem [] _ = []
checkVacAltaOrdem (x:xs) myVacinados = filter mesmaQtdDose myVacinados ++ checkVacAltaOrdem xs myVacinados
    where
        mesmaQtdDose (y, ys) = y == x && length ys == 2

percentual :: Int ->  Int -> String
percentual _ 0 = error "Divisao por zero detectada"
percentual n1 n2 = percentualForm (100 * (x / y))
    where
        x = fromIntegral n1 :: Float
        y = fromIntegral n2 :: Float

percentualForm ::  Float -> String 
percentualForm x = if (or $ map addE (show x)) then formataFinal x else (show x)
    where
        addE n1 = ('e' == n1)

formataFinal :: Float -> String
formataFinal x = if (last (show x) == '2') then "0.0" ++ [head $ show x]
                 else "0.0" ++ dar51 (ord (last (show (x)))) ++ [(head (show x))] ++ (take 1 (drop 2 (show x)))

dar51 :: Int -> String
dar51 51 = []
dar51 x = "0" ++ dar51 (x - 1)

----------------------Questao 02 Letra B
questao2B :: Municipio -> Arv PopMun -> CadastroSUS -> Vacinados -> Data -> Double
questao2B myMunicipio myArvore myDataBase myVacinados dataAtual = percentQtd
    where  percentQtd 
                    | qtdMuni == 0 = 0 
                    | otherwise = (fromIntegral (quantidadeMunAtrasados myVacinados myDataBase myMunicipio dataAtual ) / fromIntegral qtdMuni) * 100
            where
                (muniArvore, qtdMuni) = getListaArv $ procurar myMunicipio myArvore
                getListaArv [] = ("", 0)
                getListaArv x = head x

----------------------Funcoes Auxiliares
procurar :: Municipio -> Arv PopMun -> [PopMun]
procurar myMunicipio myArvore = procurando myMunicipio [] myArvore 
    where 
        procurando val xs NoNulo = xs
        procurando val xs (No v n1 n2)
            | fst v == val = [v]
            | val > fst v  = procurando val xs n2
            | otherwise    = procurando val xs n1 

quantidadeMunAtrasados :: Vacinados -> CadastroSUS -> Municipio -> Data -> Quantidade
quantidadeMunAtrasados myVacinados myDataBase myMunicipio dataAtual = length [cpf | (cpf, dosesTomadas) <- myVacinados, (getMunicipio (getCidadao cpf myDataBase)) == myMunicipio, (vacinaEstarAtrasada (getCidadao cpf myDataBase) myVacinados dataAtual), (getDosesTomadas cpf myVacinados) == 2]

getCidadao :: CPF -> CadastroSUS -> Cidadao
getCidadao myCPF myDataBase 
    | cidadaoEncontrado == [] = error "Cidadao nao encontrado"
    | otherwise = head cidadaoEncontrado 
    where cidadaoEncontrado = [cidadao | cidadao <- myDataBase, myCPF == (getCPFSUS cidadao)]

--Verificar se usuario ja tomou primeiro dose
--Primeiro pega a lista que possuia como unico elemento(por isso o head, já que é so um elemento) uma lista que tem tuplas de vacinas e datas
getVacinaData :: CPF -> Vacinados -> Doses
getVacinaData myCPF myVacinados =  head [dosesTomadas | (cpf, dosesTomadas) <- myVacinados, myCPF == cpf]

--Ai eu conto quantas vacinas tem nessa lista
getDosesTomadas :: CPF -> Vacinados -> Int
getDosesTomadas myCPF myVacinados = length (getVacinaData myCPF myVacinados)

--Vieram da Lista 01
--Saber quantos dias existem entre dois anos, sem contar o ano da vacina e ano atual
diasAnoToAno :: Ano -> Ano -> Int
diasAnoToAno anoVac anoAtual = qtDiasAnoBissexto + qtDiasAnoComum
    where 
        listaAnos = [(anoVac + 1)..(anoAtual + 1)]
        qtDiasAnoBissexto = 366 + length [anos | anos <- listaAnos, (checkAnoBissexto anos)]
        qtDiasAnoComum = 365 + length [anos | anos <- listaAnos, not (checkAnoBissexto anos)]

---verificar se ano é bissexto
checkAnoBissexto :: Ano -> Bool
checkAnoBissexto ano = (ano `mod` 4 == 0 && (ano `mod` 100 /= 0 || ano `mod` 400 == 0))

--Pegar a data da vacina pelo cidadao
getVacinaData' :: Cidadao -> Vacinados -> Data
getVacinaData' myCidadao myVacinados =  head [dataDose | (cpf, dosesTomadas) <- myVacinados, (vacina, dataDose) <- dosesTomadas,(getCPFSUS myCidadao) == cpf]

findVacina :: Cidadao -> Vacinados -> Vacina
findVacina humanoSUS myVacinados 
    | nomeVacina == [] = "Vacina nao Encontrada"
    | otherwise = head nomeVacina
    where nomeVacina =  [vacina | (cpf, listaDoses) <- myVacinados, (vacina, data1) <- listaDoses, cpf == (getCPFSUS humanoSUS)]
--item m) Quantidade 

--Retornar se a data esta atrasada pela vacina
vacinaEstarAtrasada :: Cidadao -> Vacinados -> Data -> Bool
vacinaEstarAtrasada myCidadao myVacinados dataAtual 
    | (findVacina myCidadao myVacinados) == "CoronaVac" && diasAtrasados (getVacinaData' myCidadao myVacinados) dataAtual > 21 = True
    | (findVacina myCidadao myVacinados) /= "CoronaVac" && diasAtrasados (getVacinaData' myCidadao myVacinados) dataAtual > 90 = True
    | otherwise = False

diasAtrasados :: Data -> Data -> Quantidade 
diasAtrasados dataVacina dataAtual 
    --Anos iguais e meses iguais 
    | (mesAtual == mesVac) && (anoAtual == anoVac) = diaAtual - diaVac
    --Anos iguais e meses diferentes
        --Ano bissexto
    |  (checkAnoBissexto anoAtual) && (anoAtual == anoVac) = diasFimMesVacBissexto + diasEntreMesesAnoBissexto + diaAtual
        --Ano comum
    | not (checkAnoBissexto anoAtual)  && (anoAtual == anoVac) = diasFimMesVacComum + diasEntreMesesAnoComum + diaAtual    
    --Anos diferentes
        --Ambos anos comuns 
    | not(checkAnoBissexto anoVac) && not (checkAnoBissexto anoAtual) = diasFimAnoComum + (diasAnoToAno anoVac anoAtual) + diasComecoAnoComum
        --Ambos anos bissextos
    | (checkAnoBissexto anoVac) && not (checkAnoBissexto anoAtual) = diasFimAnoBissexto +(diasAnoToAno anoVac anoAtual) + diasFimAnoBissexto
    
        --O ano da vacina eh comum e ano atual eh bissexto
    | not (checkAnoBissexto anoVac) && (checkAnoBissexto anoAtual) = diasFimAnoComum + (diasAnoToAno anoVac anoAtual) + diasComecoAnoComum
        --O ano da vacina eh bissexto e ano atual eh comum
    | (checkAnoBissexto anoVac) && not (checkAnoBissexto anoAtual) = diasFimAnoBissexto + (diasAnoToAno anoVac anoAtual) + diasComecoAnoBissexto
    --Se de erro, tratamento
    | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

    where 
        (diaVac, mesVac, anoVac) = dataVacina
        (diaAtual, mesAtual, anoAtual) = dataAtual  
        --Numero de dias em cada mes de um ano bissexto
        diasMesesAnoBissexto = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        --Numero de dias em cada mes de um ano comum
        diasMesesAnoComum = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        
    --Calculo para dias em um mesmo ano
        --Pegar a quantidade de dias decorridos entre os meses da vacina e da data atual, tirando o inicio e o fim(Em um ano comum)
        diasEntreMesesAnoComum = sum (drop mesVac (take (mesAtual - 1) diasMesesAnoComum))
        --Pgar a quantidade de dias decorridos ate o final do mes da vacina(Em um ano comum)
        diasFimMesVacComum = sum (drop (mesVac - 1) (take mesVac diasMesesAnoComum)) - diaVac

        --Pegar a quantidade de dias decorridos entre os meses da vacina e da data atual, tirando o inicio e o fim(Em um ano bissexto)
        diasEntreMesesAnoBissexto = sum (drop mesVac (take (mesAtual - 1) diasMesesAnoBissexto))
        --Pgar a quantidade de dias decorridos ate o final do mes da vacina(Em um ano bissexto)
        diasFimMesVacBissexto = sum (drop (mesVac - 1) (take mesVac diasMesesAnoBissexto)) - diaVac
        
    --Calculo para dias com anos diferentes
        --Pega a quantidade de dias a partir do inicio do ano atual(Em um ano comum)
        diasComecoAnoComum = sum (take (mesAtual - 1) diasMesesAnoComum) + diaAtual
        --Pega a quantidade de dias ate o final do ano da vacina(Em um ano comum)
        diasFimAnoComum = diasFimMesVacComum + sum (drop mesVac diasMesesAnoComum)

        --Pega a quantidade de dias a partir do inicio do ano atual(Em um ano bissexto)
        diasComecoAnoBissexto = sum (take (mesAtual - 1) diasMesesAnoBissexto) + diaAtual
        --Pega a quantidade de dias ate o final do ano da vacina(Em um ano bissexto)
        diasFimAnoBissexto = diasFimMesVacComum + sum (drop mesVac diasMesesAnoBissexto)

