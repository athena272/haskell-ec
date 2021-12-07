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
type Cadastro = [Cidadao]
type IdadeInicial = Int
type IdadeFinal = Int
type FaixaIdade = (IdadeInicial, IdadeFinal)
type Quantidade = Int
type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)
type Vacinados = [Vacinado]

type FixedFaixas = [FaixaIdade]


fic :: FixedFaixas 
fic = [(0,10),(11,20),(21,30),(31,40),(41,50),(51,60),(61,70),(71,80),(81,90),(91,100),(101,110),(111,120),(121,130)]


cad :: Cadastro
cad = [(11111111111, "Abel", 'F', (28,04,1980), "Endereco A", "Cidade A", "A", "55555555", "matheus@gmal.com"), 
       (22222222222, "Abel", 'M', (28,04,1980), "Endereco B", "Cidade B", "A", "55555555", "matheus@gmal.com"), 
       (33333333333, "Abel", 'M', (28,04,1980), "Endereco C", "Cidade C", "A", "55555555", "matheus@gmal.com"),
       (44444444444, "Abel", 'F', (28,04,1980), "Endereco D", "Cidade D", "A", "55555555", "matheus@gmal.com"), 
       (55555555555, "Abel", 'M', (28,04,2000), "Endereco A", "Cidade A", "A", "55555555", "matheus@gmal.com"), 
       (66666666666, "Abel", 'F', (28,04,2000), "Endereco B", "Cidade B", "A", "55555555", "matheus@gmal.com"),
       (77777777777, "Abel", 'M', (28,04,2000), "Endereco G", "Cidade B", "A", "55555555", "matheus@gmal.com"),
       (88888888888, "Abel", 'F', (28,04,2000), "Endereco H", "Cidade E", "A", "55555555", "matheus@gmal.com"),
       (99999999999, "Abel", 'M', (28,04,2020), "Endereco I", "Cidade C", "A", "55555555", "matheus@gmal.com"),
       (12312312312, "Abel", 'F', (28,04,1980), "Endereco Aa", "Cidade AB", "B", "55555555", "matheus@gmal.com"), 
       (23423423423, "Abel", 'M', (28,04,1980), "Endereco Bb", "Cidade BC", "B", "55555555", "matheus@gmal.com"), 
       (34534534534, "Abel", 'M', (28,04,1980), "Endereco Cc", "Cidade CD", "B", "55555555", "matheus@gmal.com"),
       (45645645645, "Abel", 'F', (28,04,1980), "Endereco Dd", "Cidade DE", "B", "55555555", "matheus@gmal.com"), 
       (56756756756, "Abel", 'M', (28,04,2000), "Endereco Ee", "Cidade EF", "B", "55555555", "matheus@gmal.com"), 
       (67867867867, "Abel", 'F', (28,04,2000), "Endereco Ff", "Cidade AB", "B", "55555555", "matheus@gmal.com"),
       (78978978978, "Abel", 'M', (28,04,2000), "Endereco Gg", "Cidade AB", "B", "55555555", "matheus@gmal.com"),
       (89089089089, "Abel", 'F', (28,04,2000), "Endereco Hh", "Cidade AB", "B", "55555555", "matheus@gmal.com"),
       (90190190190, "Abel", 'M', (28,04,2020), "Endereco Ii", "Cidade BC", "B", "55555555", "matheus@gmal.com"),
       (12121212121, "Abel", 'F', (28,04,1980), "Endereco J1", "Cidade ABC", "C", "55555555", "matheus@gmal.com"),
       (23232323232, "Abel", 'M', (28,04,1980), "Endereco K2", "Cidade BCD", "C", "55555555", "matheus@gmal.com"),
       (34343434343, "Abel", 'M', (28,04,1980), "Endereco L3", "Cidade CDE", "C", "55555555", "matheus@gmal.com"),
       (45454545454, "Abel", 'M', (28,04,1980), "Endereco M4", "Cidade EFG", "C", "55555555", "matheus@gmal.com"),
       (56565656565, "Abel", 'F', (28,04,2000), "Endereco N5", "Cidade ABC", "C", "55555555", "matheus@gmal.com"),
       (67676767676, "Abel", 'M', (28,04,2000), "Endereco O6", "Cidade CDE", "C", "55555555", "matheus@gmal.com"),
       (78787878787, "Abel", 'F', (28,04,2000), "Endereco P7", "Cidade EFG", "C", "55555555", "matheus@gmal.com"),
       (89898989898, "Abel", 'M', (28,04,2000), "Endereco Q8", "Cidade EFG", "C", "55555555", "matheus@gmal.com"),
       (90909090909, "Abel", 'F', (28,04,2020), "Endereco R9", "Cidade EFG", "C", "55555555", "matheus@gmal.com")]

-----[PopEstado]
---------[(Estado,[PopMun])]
------------[(Estado,[(Municipio,[(FaixaIdade, POpulação)])])]
type Populacao = Int
type PopMun = (Municipio, [(FaixaIdade, Populacao)])
type PopEstado = (Estado, [PopMun])
type PopPais = [PopEstado]
demo :: PopPais
demo = [("A",[("Cidade A",[((0,10), 100),((11,20), 100),((21,30), 100),((31,40), 100),((41,50), 100),((51,60), 100),((61,70), 100),((71,80), 100),((81,90), 100),((91,100), 100),((101,110), 100),((111,120), 100),((121,130), 0)]),
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
reg :: Vacinados
reg = [(11111111111, [("Coronavac", (20,09,2021))]), 
       (22222222222, [("Pfizer", (21,09,2021)),("Pfizer", (21,10,2021))]), 
       (33333333333, [("Coronavac", (10,09,2021))]),
       (55555555555, [("Coronavac", (10,09,2021))]),
       (12312312312, [("Janssen", (16,10,2021)), ("Janssen", (16,10,2021))])]

----------------------- QUESTÃO 01
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

---------------- A
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
atualizaEndSUS :: CPF -> Cadastro -> Endereco -> Cadastro
atualizaEndSUS card [] ende = error "User Nao Encontrado"
atualizaEndSUS card (x:xs) ende 
 | (takeCpf x) == card = (addNewEnd x ende):xs
 | otherwise = x : atualizaEndSUS card xs ende
-----------------B
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
removeCpf ::CPF -> Cadastro -> Cadastro
removeCpf card []  = error "User not Found"
removeCpf card (x:xs) 
 | (takeCpf x) == card = xs
 | otherwise = x : removeCpf card xs
-------------------------- C
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
geraListaMunicipioFaixas :: Cadastro -> Municipio -> [FaixaIdade] -> Data -> [(FaixaIdade, Int)] 
geraListaMunicipioFaixas registro municipio [] dataHoje = []
geraListaMunicipioFaixas registro municipio (x:xs) dataHoje = (x, length (trueLista registro municipio x dataHoje)) : geraListaMunicipioFaixas registro municipio xs dataHoje

-------------------------- D
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
aplicaPrimDose :: CPF -> Cadastro -> FaixaIdade -> Municipio -> Vacina -> Data -> Vacinados -> Vacinados
aplicaPrimDose card [] (inicial, final) municipio vacina dataHoje lista = []
aplicaPrimDose card (x:xs) (inicial, final) municipio vacina dataHoje lista 
 | not (takeCpfvacinados card lista) = if (takeCpf x) == card then 
                                          if (aniversario (recebeIdade x) dataHoje) >= inicial && 
                                             (aniversario (recebeIdade x) dataHoje) <= final then 
                                               if takeMuni x == municipio then
                                                 if vacina ==  "Janssen" then  
                                                   (takeCpf x, [(vacina, dataHoje), (vacina, dataHoje)]):lista 
                                                  else (takeCpf x, [(vacina, dataHoje)]):lista
                                                else aplicaPrimDose card xs (inicial, final) municipio vacina dataHoje lista  
                                             else aplicaPrimDose card xs (inicial, final) municipio vacina dataHoje lista 
                                         else aplicaPrimDose card xs (inicial, final) municipio vacina dataHoje lista  
  | otherwise = error "Tá errado meu rei"
-------------------------- E
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
quantidadeDoseMun :: Vacinados -> TipoDose -> Municipio -> Cadastro -> Quantidade
quantidadeDoseMun lista tipo municipio registro = length (trueMunQuantia lista tipo municipio registro)
trueMunQuantia :: Vacinados -> TipoDose -> Municipio -> Cadastro -> Vacinados
trueMunQuantia [] tipoDose municipio registro = []
trueMunQuantia (x:xs) tipoDose municipio registro 
 | (length (snd x) >= tipoDose) && (takeMun (fst x) registro municipio == True) = x:trueMunQuantia xs tipoDose municipio registro
 | otherwise =  trueMunQuantia xs tipoDose municipio registro
-------------------------- F
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
quantidadeEstIdDose :: Vacinados -> Estado -> FaixaIdade -> TipoDose -> Cadastro -> Data-> Quantidade
quantidadeEstIdDose lista state (inicial, final) tipoDose registro dataHoje = length (quantidadeDoseEst lista tipoDose state (comitIdade registro (inicial, final) dataHoje)) 
quantidadeDoseEst :: Vacinados -> TipoDose -> Estado -> Cadastro -> Vacinados
quantidadeDoseEst [] tipoDose estado registro = []
quantidadeDoseEst (x:xs) tipoDose estado registro 
 | (length (snd x) >= tipoDose) && (takeEsta (fst x) registro estado == True) = x:quantidadeDoseEst xs tipoDose estado registro
 | otherwise =  quantidadeDoseEst xs tipoDose estado registro
-------------------------- G
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
quantidadeEstVacDose :: Vacinados -> Estado -> Vacina -> TipoDose -> Cadastro -> Quantidade
quantidadeEstVacDose lista state vac tipe registro = length (trueQuantia lista state vac tipe registro)

trueQuantia :: Vacinados -> Estado -> Vacina -> TipoDose -> Cadastro -> Vacinados
trueQuantia [] state tipoVacina tipoDose registro = []
trueQuantia (x:xs) state tipoVacina tipoDose registro 
 | (fst (head (snd x)) == tipoVacina) && 
   (length (snd x) >= tipoDose) && 
   (takeEsta (fst x) registro state == True) = x:trueQuantia xs state tipoVacina tipoDose registro
 | otherwise = trueQuantia xs state tipoVacina tipoDose registro


--------------------------------- QUESTÃO 02 ------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
totalQPodeVacinar :: Cadastro -> Int -> Municipio -> Int -> Data -> (Int,Int)
totalQPodeVacinar registro ultimaIdade municipio quantVacinas dataHoje = (alfa, beta)
        where 
                alfa = head (gestor registro ultimaIdade municipio quantVacinas dataHoje)
                beta = last (gestor registro ultimaIdade municipio quantVacinas dataHoje)

gestor :: Cadastro -> Int -> Municipio -> Int -> Data -> [Int]
gestor [] ultimaIdade municipio quantVacinas dataHoje = []
gestor (x:xs) 0 municipio quantVacinas dataHoje = []
gestor (x:xs) ultimaIdade municipio quantVacinas dataHoje
 | length (idadeMenor (x:xs) ultimaIdade dataHoje) == quantVacinas = [ultimaIdade-1]
 | length (idadeMenor (x:xs) ultimaIdade dataHoje) < quantVacinas = (ultimaIdade-1):gestor (x:xs) (ultimaIdade-1) municipio (quantVacinas - (length (idadeMenor (x:xs) ultimaIdade dataHoje))) dataHoje 
 | otherwise = []

idadeMenor :: Cadastro -> Int -> Data -> Cadastro
idadeMenor [] ultimaIdade dataHoje = []
idadeMenor (x:xs) ultimaIdade dataHoje
 | aniversario (recebeIdade x) dataHoje == (ultimaIdade-1) = x:idadeMenor xs ultimaIdade dataHoje
 | otherwise = idadeMenor xs ultimaIdade dataHoje 

--------------------------------QUESTÃO 03---------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

respostaQuestao03 :: Vacinados -> Cadastro -> PopPais -> Estado -> TipoDose -> Data -> [(FaixaIdade, String)]
respostaQuestao03 lista registro popPais estado tipoDose dataHoje = lengSepra fic registro dataHoje lista estado tipoDose (recurso estado popPais fic)
----------------------------------- QUESTÃO 04 ----------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
respostaQuestao04 :: Estado ->  Vacinados -> Cadastro -> PopPais -> [(Municipio, String)]
respostaQuestao04 estado _ [] _ = []
respostaQuestao04 estado [] _ _ = []
respostaQuestao04 estado _ _ [] = []
respostaQuestao04 estado lista registro popPais = juntando (tentandoAjustar1 (tentandoAjustar (pegando popPais estado))) (tentandoAjustar2 (tentandoAjustar (pegando popPais estado))) lista registro

----------------------------------- QUESTÃO 05 ----------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
questao05 :: PopPais -> Vacinados ->  Cadastro -> [(Estado, String)]
questao05 [] _ _ = []
questao05 _ [] _ = []
questao05 _ _ [] = []
questao05 popPais lista registro = formPercent2 (respostaQuestao05 popPais lista registro)

----------------------------------- QUESTÃO 06 ----------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
adicionaSUS :: Cidadao -> Cadastro -> Cadastro
adicionaSUS _ [] = []
adicionaSUS pessoa registro
 | chequeCpf (takeCpf pessoa) registro == True =  error "Usuario jah cadastrado"
 | otherwise = pessoa : registro

aplicaSegDose:: CPF -> Data -> Vacinados -> Vacinados
aplicaSegDose _ _ [] = error "User Not Found"
aplicaSegDose card dataHoje (x:xs) 
 | fst x == card = if length (snd x) == 2 then error "Vacinacao Completa" 
                      else if takeData (snd x) dataHoje == True 
                              then (monta (fst x) (head (snd x)) dataHoje) : xs
                              else error "Invalid Data"
 | otherwise = aplicaSegDose card dataHoje xs





















---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
----------Here We Found the Demon, the hell's Lord! keep distance ---------------
-----------it's serious, this code part is worse than death-----------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



a0 :: PopPais -> [Estado]
a0 [] = []
a0 (x:xs) = (fst x) : a0 xs
a0345 :: PopPais -> Estado -> PopEstado
a0345 [] _ = error "Erro"
a0345 (x:xs) estado 
 | fst x == estado = x
 | otherwise = a0345 xs estado



formPercent2 :: [(Estado, Float)] -> [(Estado, String)]
formPercent2 [] = []
formPercent2 (x:xs) = (fst x, formPercent (snd x)) : formPercent2 xs



respostaQuestao05 :: PopPais -> Vacinados ->  Cadastro -> [(Estado, Float)]
respostaQuestao05 popPais lista registro = ordSelecaUn (a10 (a0 popPais) popPais lista registro)

a10 :: [Estado] -> PopPais -> Vacinados ->  Cadastro -> [(Estado, Float)]
a10 [] _ _ _ = []
a10 _ [] _ _ = []
a10 _ _ [] _ = []
a10 _ _ _ [] = []
a10 (x:xs) popPais lista registro = (x, (percent (b0 lista registro x) (a03 (a02 (a01 (a0345 popPais x)))))) : a10 xs popPais lista registro


mimos :: (Estado, Float) -> (Estado, Float) -> (Estado, Float)
mimos (state, num) (estado, numero)
 | num <= numero = (state, num)
 | otherwise = (estado, numero)
menos :: [(Estado, Float)] -> (Estado, Float)
menos [x] = x
menos (x:xs) = mimos x (menos xs) 
ordSelecaUn :: [(Estado, Float)] -> [(Estado, Float)]
ordSelecaUn [] = []
ordSelecaUn zs = m : ordSelecaUn (removeListah m zs)
    where m = menos zs
removeListah :: (Estado, Float) -> [(Estado, Float)] -> [(Estado, Float)]
removeListah _ [] = []
removeListah y (x:xs)
 | y == x = xs
 | otherwise = x : removeListah y xs


a01 :: PopEstado -> [PopMun]
a01 estado = snd estado
a02 :: [PopMun] -> [(FaixaIdade, Int)]
a02 [] = []
a02 (x:xs) = snd x ++ a02 xs 
a03 :: [(FaixaIdade, Int)] -> Int
a03 [] = 0
a03 (x:xs) = snd x + a03 xs


b0 :: Vacinados -> Cadastro ->  Estado ->  Int
b0 [] _ _ = 0
b0 _ [] _ = 0
b0 (x:xs) registro estado
 | b1 (fst x) registro estado == True = 1 + b0 xs registro estado
 | otherwise = b0 xs registro estado

b1 :: CPF -> Cadastro ->  Estado ->  Bool
b1 card [] _ = False
b1 card (x:xs) estado 
 | card == takeCpf x && takeEst x == estado = True
 | otherwise = b1 card xs estado


monta :: CPF -> (Vacina, Data) -> Data -> Vacinado
monta card (vac, data1) dataHoje = (card, [(vac, data1), (vac, dataHoje)])
takeData :: [(Vacina, Data)] -> Data -> Bool
takeData [] _ = False
takeData (x:xs) dataHoje
 | takeano (snd x) > takeano dataHoje = False
 | takeano (snd x) == takeano dataHoje && takemes (snd x) > takemes dataHoje = False
 | takeano (snd x) == takeano dataHoje && takemes (snd x) == takemes dataHoje && takedia (snd x) > takedia dataHoje = False
 | otherwise = True




comitIdade :: Cadastro -> FaixaIdade -> Data -> Cadastro
comitIdade [] (inicial, final) dataHoje = []
comitIdade (x:xs) (inicial, final) dataHoje
 |aniversario (recebeIdade x) dataHoje >= inicial && 
  aniversario (recebeIdade x) dataHoje <= final = x:comitIdade xs (inicial, final) dataHoje 
 | otherwise = comitIdade xs (inicial, final) dataHoje
takeMuni :: Cidadao -> Municipio
takeMuni (_,_,_,_,_,muni,_,_,_) =  muni
takeEst :: Cidadao -> Estado
takeEst (_,_,_,_,_,_,est,_,_) =  est

takeCpf :: Cidadao -> CPF
takeCpf (card,_,_,_,_,_,_,_,_) = card

addNewEnd :: Cidadao -> Endereco -> Cidadao
addNewEnd (card, nome, gen, idade, ende, muni, estado, cell, email) newEnde = (card, nome, gen, idade, newEnde, muni, estado, cell, email)

takeIdade :: Data -> Data -> Bool
takeIdade datanasc datahoje
 | takeano datanasc >  takeano datahoje =  error "Erro"
 | takeano datanasc ==  takeano datahoje && takemes datanasc > takemes datahoje = error "Erro"
 | takeano datanasc ==  takeano datahoje && takemes datanasc == takemes datahoje && takedia datanasc > takedia datahoje = error "Invalid date"
 | otherwise = True
aniversario :: Data -> Data -> Int 
aniversario dataNasc dataHoje 
 | takeIdade dataNasc dataHoje == True = if takeano dataNasc == takeano dataHoje then 0
                                 else if takemes dataNasc > takemes dataHoje then (takeano dataHoje - takeano dataNasc) - 1 
                                    else if takemes dataNasc == takemes dataHoje && takedia dataNasc > takedia dataHoje then (takeano dataHoje - takeano dataNasc) - 1
                                        else (takeano dataHoje - takeano dataNasc)
 | otherwise = error "Ops"
takedia :: Data -> Dia
takedia (diaNasc, _, _) = diaNasc
takemes :: Data -> Mes
takemes (_, mesNasc, _) = mesNasc
takeano :: Data -> Ano
takeano (_, _, anoNasc) = anoNasc
recebeIdade :: Cidadao -> DataNasc
recebeIdade (_, _, _, idade, _, _, _, _, _) = idade
takeCpfvacinados :: CPF -> Vacinados -> Bool
takeCpfvacinados card [] = False
takeCpfvacinados card (x:xs)
 | fst x ==  card =  True 
 | otherwise = False
takeNome :: Cidadao -> String
takeNome (_,nome,_,_,_,_,_,_,_) = nome
takeCpfvac :: Vacinado -> CPF
takeCpfvac vac = fst vac
doseMun :: Municipio -> Cadastro -> Cadastro
doseMun municipio (x:xs)
 | takeMuni x == municipio = x:doseMun municipio xs
 | otherwise = doseMun municipio xs

takeMun :: CPF -> Cadastro -> Municipio -> Bool
takeMun card [] municipio = False
takeMun card (y:ys) municipio 
 | takeCpf y == card && takeMuni y == municipio = True
 | otherwise = takeMun card ys municipio


takeEsta :: CPF -> Cadastro -> Estado -> Bool
takeEsta card [] est = False
takeEsta card (y:ys) est 
 | takeCpf y == card && takeEst y == est = True
 | otherwise = takeEsta card ys est
 
trueLista :: Cadastro -> Municipio -> FaixaIdade -> Data-> [Cidadao]
trueLista [] munu (inicial, final) dataHoje = []
trueLista (x:xs) munu (inicial, final) dataHoje
 | takeMuni x == munu && (aniversario (recebeIdade x) dataHoje) >= inicial 
                      && (aniversario (recebeIdade x) dataHoje) <= final = x: trueLista xs munu (inicial, final) dataHoje
 | otherwise = trueLista xs munu (inicial, final) dataHoje



popListMun :: [Municipio] -> Data -> [(Municipio, [(FaixaIdade, Populacao)])]
popListMun [] dataHoje= []
popListMun (x:xs) dataHoje = popMun x dataHoje : popListMun xs dataHoje

popMun :: Municipio -> Data -> (Municipio, [(FaixaIdade, Populacao)])
popMun muni dataHoje = (muni, novaNovaFun cad fic muni dataHoje) 

novaFun :: Cadastro -> FaixaIdade -> Municipio -> Data -> Int
novaFun [] (inicial, final) muni dataHoje = 0
novaFun (x:xs) (inicial, final) muni dataHoje
 | takeMuni x == muni && aniversario (recebeIdade x) dataHoje >= inicial && aniversario (recebeIdade x) dataHoje <= final = 1 + novaFun xs (inicial, final) muni dataHoje
 | otherwise = novaFun xs (inicial, final) muni dataHoje

novaNovaFun :: Cadastro -> [FaixaIdade] -> Municipio -> Data -> [(FaixaIdade,Int)]
novaNovaFun [] (y:ys) muni dataHoje =  []
novaNovaFun (x:xs) [] muni dataHoje = []
novaNovaFun (x:xs) (y:ys) muni dataHoje = (y, novaFun (x:xs) y muni dataHoje) : novaNovaFun (x:xs) ys muni dataHoje



separarEstadoId :: Cadastro -> Estado -> [Municipio]
separarEstadoId [] estado = []
separarEstadoId (x:xs) estado 
 | takeEst x == estado = (takeMuni x):separarEstadoId xs estado
 | otherwise = separarEstadoId xs estado 

elemNum :: [Municipio] -> Municipio -> Int
elemNum [] municipio = 0
elemNum (x:xs) municipio
 | x == municipio = 1 + elemNum xs municipio
 | otherwise = elemNum xs municipio 

tipando :: Vacinados -> Int -> Vacinados
tipando [] _ = []
tipando (x:xs) 0 = []
tipando (x:xs) numeroVac
 | length (snd x) >= numeroVac = x: tipando xs numeroVac
 | otherwise = tipando xs numeroVac


tipandoDose :: Vacinados -> Int -> CPF -> Bool
tipandoDose [] num card = False
tipandoDose (x:xs) num card
 | length (snd x) >= num && fst x == card = True
 | otherwise = tipandoDose xs num card

estaDualId :: Cadastro ->  FaixaIdade -> Data -> Int ->  Cadastro
estaDualId [] (final, inicial) dataHoje numero = []
estaDualId (x:xs) (final, inicial) dataHoje numero
 | aniversario (recebeIdade x) dataHoje >= final && aniversario (recebeIdade x) dataHoje <= inicial && (vacinou (takeCpf x) reg  == True) && (tipandoDose reg numero (takeCpf x) == True) = x: estaDualId xs (final, inicial) dataHoje numero
 | otherwise = estaDualId xs (final, inicial) dataHoje numero


vacinou :: CPF -> Vacinados -> Bool
vacinou card [] = False
vacinou card (x:xs) 
 | card ==  fst x = True
 | otherwise = vacinou card xs


funM :: Cadastro -> Cadastro
funM [] = []
funM (x:xs)
 | (vacinou (takeCpf x) reg == True) = x : funM xs
 | otherwise = funM xs
 
estuaDual :: Estado ->  Cadastro -> Cadastro
estuaDual estado []= [] 
estuaDual estado (x:xs)
 | takeEst x == estado = x:estuaDual estado xs
 | otherwise = estuaDual estado xs 

munuCipal :: Municipio -> Cadastro -> Cadastro
munuCipal muni [] = []
munuCipal muni (x:xs)
 | takeMuni x == muni = x: munuCipal muni xs
 | otherwise = munuCipal muni xs

funF :: Estado -> Int 
funF estado = length (estuaDual estado cad)

funH :: Float -> String
funH num = show num ++ "%"


q3 :: Vacinados -> Cadastro -> Estado -> TipoDose -> String 
q3 lista registro estado tipoDose = formPercent (percent (dosePorEstado lista registro estado tipoDose) (estadoCadastrado registro estado))
takeEstado :: Cadastro -> Estado -> Cadastro
takeEstado [] estado = []
takeEstado (x:xs) estado 
 | takeEst x == estado = x:takeEstado xs estado
 | otherwise = takeEstado xs estado 
estadoCadastrado :: Cadastro -> Estado -> Int
estadoCadastrado registro estado = length (takeEstado registro estado)
dosePorEstado :: Vacinados -> Cadastro -> Estado -> TipoDose -> Int
dosePorEstado lista registro estado tipoDose = ((length (quantidadeDoseEst lista tipoDose estado registro)))
formPercent :: Float -> String
formPercent qtd = show qtd ++ "%"  
percent :: Int -> Int -> Float
percent x y =   100 * ( a / b )
  where a = fromIntegral x :: Float
        b = fromIntegral y :: Float


quantiA :: Vacinados -> Cadastro -> TipoDose -> FaixaIdade -> Estado -> Data -> Int
quantiA [] registro tipoDose num estado dataHoje= 0
quantiA (x:xs) registro tipoDose num estado dataHoje
 | (length (snd x) >= tipoDose) && (takeEsta (fst x) registro estado == True) = 1 + quantiA xs registro tipoDose num estado dataHoje
 | otherwise = quantiA xs registro tipoDose num estado dataHoje

calculoDEFaixas :: Cadastro -> FaixaIdade -> Data -> Cadastro 
calculoDEFaixas [] (inicial, final) dataHoje = []
calculoDEFaixas (x:xs) (inicial, final) dataHoje
 | (aniversario (recebeIdade x) dataHoje >= inicial) &&  (aniversario (recebeIdade x) dataHoje <= final) = x: calculoDEFaixas xs (inicial, final) dataHoje
 | otherwise = calculoDEFaixas xs (inicial, final) dataHoje

vendoLista :: [Municipio] -> [(Municipio, String)]
vendoLista [] = []
vendoLista (x:xs) = (x, funH (percent (length (interDadoFun (dadoMuni x cad))) (length (munuCipal x cad)))) : vendoLista xs

estadoMuni :: Estado -> Cadastro ->  [Municipio]
estadoMuni estado [] = []
estadoMuni estado (x:xs) 
 | takeEst x == estado = if (elemNum (separarEstadoId (x:xs) estado) (takeMuni x)) == 1 
                             then (takeMuni x): estadoMuni estado xs 
                             else estadoMuni estado xs
 | otherwise = estadoMuni estado xs


estadoN :: Estado -> [Municipio]
estadoN estado = estadoMuni estado cad



dadoMuni :: Municipio -> Cadastro -> Cadastro
dadoMuni muni [] = [] 
dadoMuni muni (x:xs) 
 | takeMuni x == muni = x : dadoMuni muni xs
 | otherwise = dadoMuni muni xs


interDadoFun :: Cadastro -> Cadastro
interDadoFun [] = []
interDadoFun (x:xs)
 | (funA (takeCpf x) reg) == True = x : interDadoFun xs
 | otherwise =  interDadoFun xs


funA :: CPF -> Vacinados -> Bool
funA card [] = False
funA card (x:xs)
 | fst x == card && length (snd x) == 2 = True
 | otherwise = funA card xs


auxiliar1 :: Cadastro -> Estado -> Cadastro 
auxiliar1 [] _ = []
auxiliar1 (x:xs) estado
 | takeEst x == estado = x : auxiliar1 xs estado
 | otherwise = auxiliar1 xs estado

auxiliar2 :: Vacinados -> TipoDose -> Vacinados
auxiliar2 [] numDose = []
auxiliar2 (x:xs) 0 = []
auxiliar2 (x:xs) numDose 
 | length (snd x) >= numDose = x : auxiliar2 xs numDose
 | otherwise = auxiliar2 xs numDose

auxiliar3 :: PopPais ->  Estado -> PopPais
auxiliar3 [] _ = []
auxiliar3 (x:xs) estado 
 | fst x == estado = x : auxiliar3 xs estado
 | otherwise = auxiliar3 xs estado

auxiliar4 :: Cadastro -> Vacinados -> Cadastro
auxiliar4 [] lista  = []
auxiliar4 (x:xs) lista 
 | (auxiliar5 x lista == True) = x : auxiliar4 xs lista 
 | otherwise = auxiliar4 xs lista

auxiliar5 :: Cidadao -> Vacinados -> Bool
auxiliar5 cidadao [] = False
auxiliar5 cidadao (x:xs) 
 | takeCpf cidadao == fst x = True
 | otherwise = auxiliar5 cidadao xs

auxiliar412 :: Cadastro -> Vacinados -> Estado -> TipoDose -> Cadastro
auxiliar412 registro lista estado tipoDose = auxiliar4 (auxiliar1 registro estado) (auxiliar2 lista tipoDose) 

sepraPorFaixa :: Cadastro -> FaixaIdade -> Data -> Cadastro
sepraPorFaixa [] (inicial, final) dataHoje = []
sepraPorFaixa (x:xs) (inicial, final) dataHoje
 | (aniversario (recebeIdade x) dataHoje >= inicial) && (aniversario (recebeIdade x) dataHoje <= final) = x : sepraPorFaixa xs (inicial, final) dataHoje
 | otherwise =  sepraPorFaixa xs (inicial, final) dataHoje

agrupaFaixas :: FixedFaixas -> Cadastro -> Data -> Vacinados -> Estado -> TipoDose -> [(FaixaIdade, Int)]
agrupaFaixas [] _ _ _ _ _ = []
agrupaFaixas (x:xs) registro dataHoje lista estado tipoDose  = (x,  2) : agrupaFaixas xs registro dataHoje lista estado tipoDose



auxiliar6 :: PopPais -> Estado -> PopEstado
auxiliar6 [] _ = error "Erro"
auxiliar6 (x:xs) estado 
 | fst x == estado = x
 | otherwise = auxiliar6 xs estado
auxiliar10 :: PopEstado -> [PopMun]
auxiliar10 lista = snd lista
auxiliar11 :: [PopMun] -> [(FaixaIdade, Int)]
auxiliar11 [] = []
auxiliar11 (x:xs) = snd x ++ auxiliar11 xs
auxiliar12 :: [(FaixaIdade, Int)] -> FaixaIdade -> [(FaixaIdade, Int)]
auxiliar12 [] _ = []
auxiliar12 (x:xs) fax 
 | fst x == fax =  x : auxiliar12 xs fax 
 | otherwise = auxiliar12 xs fax 

auxiliar121110 :: Estado -> FaixaIdade -> PopPais -> [(FaixaIdade, Int)]
auxiliar121110 estado fax popPais= auxiliar12 (auxiliar11 (auxiliar10 (auxiliar6 popPais estado))) fax

somaAuxiliar :: [(FaixaIdade, Int)] -> Int
somaAuxiliar [] = 0
somaAuxiliar (x:xs) = snd x + somaAuxiliar xs 

recurso :: Estado -> PopPais -> FixedFaixas -> [Int]
recurso estado popPais [] = []
recurso estado popPais (x:xs) = somaAuxiliar (auxiliar121110 estado x popPais) : recurso estado popPais xs

lengSepra :: FixedFaixas -> Cadastro -> Data -> Vacinados -> Estado -> TipoDose -> [Int] -> [(FaixaIdade, String)]
lengSepra [] _ _ _ _ _ _ = []
lengSepra (x:xs) registro dataHoje lista estado tipoDose (y:ys) = (x, formPercent (percent (length (sepraPorFaixa (auxiliar412 registro lista estado tipoDose) x dataHoje)) y)) : lengSepra xs registro dataHoje lista estado tipoDose ys  



popEstado :: Estado -> Data -> (Estado, [(Municipio, [(FaixaIdade, Populacao)])])
popEstado estado dataHoje = (estado, popListMun (estadoN estado) dataHoje)
questao04 :: Estado -> [(Municipio, String)] 
questao04 estado = vendoLista (estadoMuni estado cad)




tentandoAjustar :: PopEstado -> [PopMun]
tentandoAjustar popEstado = snd popEstado

tentandoAjustar1 :: [PopMun] -> [Municipio]
tentandoAjustar1 [] = []
tentandoAjustar1 (x:xs) = fst x : tentandoAjustar1 xs
-----------
tentandoAjustar2 :: [PopMun] -> [Int]
tentandoAjustar2 [] = []
tentandoAjustar2 (x:xs) = tentandoAjustar3 (snd x) : tentandoAjustar2 xs
tentandoAjustar3 :: [(FaixaIdade, Populacao)]  -> Int
tentandoAjustar3 [] = 0
tentandoAjustar3 (x:xs) = snd x + tentandoAjustar3 xs
-----------
juntando :: [Municipio] -> [Int] -> Vacinados -> Cadastro -> [(Municipio, String)]
juntando [] _ lista registro = []
juntando _ [] lista registro = []
juntando (x:xs) (y:ys) lista registro = (socorroDeus x y lista registro) : juntando xs ys lista registro

socorroDeus :: Municipio -> Int -> Vacinados -> Cadastro -> (Municipio, String)
socorroDeus mini numMuni lista registro = (mini, formPercent (percent (length (ajustando lista registro mini)) numMuni))

funH2 :: Int -> String
funH2 num = show num ++ "%"

ajustando :: Vacinados -> Cadastro -> Municipio -> Cadastro
ajustando [] _ _ = []
ajustando _ [] _ = []
ajustando (x:xs) (y:ys) municipio
 | (ajustando2 y (x:xs) == True) && (takeMuni y == municipio) = y : ajustando (x:xs) ys municipio
 | otherwise =  ajustando (x:xs) ys municipio

ajustando2 :: Cidadao -> Vacinados ->  Bool
ajustando2 _ [] = False 
ajustando2 pessoa (x:xs) 
 | takeCpf pessoa == fst x && (length (snd x) == 2) = True
 | otherwise = ajustando2 pessoa xs

pegando :: PopPais -> Estado -> PopEstado
pegando [] estado= error "erro"
pegando (x:xs) estado 
 | fst x == estado = x
 | otherwise = pegando xs estado

formandoString :: [Char] -> [Char]
formandoString [] = []
formandoString (x:xs)
 | x /= '.' = x : formandoString xs
 | otherwise = '.' : formandoString (take 2 xs)

chequeCpf :: CPF -> Cadastro -> Bool
chequeCpf _ [] = False
chequeCpf card (x:xs) 
 | card == takeCpf x = True
 | otherwise = chequeCpf card xs