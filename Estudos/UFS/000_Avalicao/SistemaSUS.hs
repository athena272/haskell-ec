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

-- item a) Cadastramento de um cidadão no sistema. 
--Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
addCadastroSUS :: Cidadao -> CadastroSUS -> CadastroSUS
addCadastroSUS myCidadao myDataBase
    | checkCPFSUS (getCPF myCidadao) myDataBase = error "Cidadao  jah existente nesse banco"
    | otherwise = (:) myCidadao myDataBase
    
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

--item c) Quando um cidadão falece, a família tem que notificar o fato em um posto de saúde, para que ele seja retirado do cadastro corrente do SUS. Como há uma verificação do atestado de óbito, isto só pode ser feito no posto. O sistema precisará da função abaixo. Se o CPF existir no cadastro corrente do SUS, o registro do cidadão deve ser completamente excluído, gerando um novo cadastro sem os dados deste cidadão. Se o CPF não existir, uma mensagem de erro, usando error, sinalizando que o cidadão não pertence ao cadastro deve ser exibida.
removeMortoSUS :: CPF -> CadastroSUS -> CadastroSUS
removeMortoSUS myCPF myDataBase 
    | not (checkCPFSUS myCPF myDataBase) = error "Esse cidadao morto nao existe nesse banco"  --verificar se o CPF da pessoa morta existe
    | otherwise = [(cpf,nome,gender,nasc,adress,muni,state,tel,email) | (cpf,nome,gender,nasc,adress,muni,state,tel,email) <- myDataBase, myCPF /= cpf]

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

--item e) Pode ser interessante também gerar uma lista da quantidade de cidadãos por faixas de idade para um dado município ou estado. As faixas de idade inicialmente previstas. O gestor pode escolher todas ou algumas destas faixas para gerar a lista. O gestor pode também, a depender das características de seu município, escolher outras faixas, já que a faixa é um parâmetro da função. Caso o gestor decida, por exemplo, coletar dados para uma idade específica, digamos 25 anos, ele deve informar a faixa (25, 25).

--Retorna a lista do municipio formatada lindamente
listaMunicipioFaixas :: CadastroSUS -> Municipio -> [FaixaIdade] -> IO()
listaMunicipioFaixas myDataBase myMunicipio listaFaixasIdade = putStrLn ("MUNICIPIO: " ++  myMunicipio ++ "\nFAIXA IDADES        QUANTIDADE\n" ++ (formataLinhas (geraListaMunicipioFaixas myDataBase myMunicipio listaFaixasIdade)) ++ (formataTotal (geraListaMunicipioFaixas myDataBase myMunicipio listaFaixasIdade)))

--Retorna a lista do estado formatada lindamente
listaEstadoFaixas :: CadastroSUS -> Estado-> [FaixaIdade] -> IO()
listaEstadoFaixas myDataBase myState listaFaixasIdade = putStrLn ("ESTADO: " ++ myState ++ "\nFAIXA IDADES        QUANTIDADE\n" ++ (formataLinhas (geraListaEstadoFaixas myDataBase myState listaFaixasIdade)) ++ (formataTotal (geraListaEstadoFaixas myDataBase myState listaFaixasIdade)))
--Estas funções precisam de funções auxiliares para gerar uma lista de quantidades por faixas de idade, para depois gerar a exibição usando as funções do item (f).
geraListaMunicipioFaixas :: CadastroSUS -> Municipio -> [FaixaIdade] -> [(FaixaIdade, Quantidade)]
geraListaMunicipioFaixas myDataBase myMunicipio listaFaixasIdade = [(faixasIdade, quantidade) | faixasIdade <- listaFaixasIdade, quantidade <- [cidadaosPorMunicipioIdade myDataBase myMunicipio faixasIdade]] 
    
geraListaEstadoFaixas :: CadastroSUS -> Estado -> [FaixaIdade] -> [(FaixaIdade, Quantidade)]
geraListaEstadoFaixas myDataBase myState listaFaixasIdade = [(faixasIdade, quantidade) | faixasIdade <- listaFaixasIdade,quantidade <- [cidadaosPorEstadoIdade myDataBase myState faixasIdade]]

--item f)A lista do município ou estado deve obedecer à formatação, descrita a seguir. O cabeçalho segue o formato abaixo, onde nome é o nome do município ou estado informado na função
--Além do cadastro no sistema SUS, haverá um cadastro dos cidadãos vacinados. Este cadastro está definido a seguir

--Primeiro Ponto: Formatação do valor inteiro que representa a quantidade para incluir os espaços à esquerda, para que a justificação à direita com a palavra QUANTIDADE ocorra.
type QuantidadeFormatada = String
formataQuant :: Quantidade -> QuantidadeFormatada
formataQuant qtd = "                  " ++ show qtd
--Segundo Ponto: Formatação de uma linha da faixa de idade. A saída desta função será uma string com o formato de uma linha da tabela anterior.
type LinhaFormatada = String
formataUmaLinha :: (FaixaIdade, Quantidade)-> LinhaFormatada
formataUmaLinha (listaFaixasIdade, qtd) = (show (fst listaFaixasIdade)) ++ " - " ++ (show (snd listaFaixasIdade)) ++ formataQuant qtd
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

--VACINACAO PELO SUS
type Vacinados = [Vacinado]
--Cada item desse cadastro, Vacinado, é da forma
type Vacina = String
type TipoDose = Int
type Dose = (Vacina, Data)
type Doses = [Dose]
type Vacinado = (CPF, Doses)

bancoDeVacinas :: [Vacina]
bancoDeVacinas = ["AstraZeneca", "CoronaVac", "Janssen", "Pfizer"]

--                                          Dose
bancoDeVacinados :: Vacinados --CPF, [(Vacina, Data)]
bancoDeVacinados = [(26716347665, [("AstraZeneca", (02, 07, 2021)), ("AstraZeneca", (01, 08, 2021))]), (88888888888, [("Pfizer", (09, 09, 2021))]), (10101010101, [("CoronaVac", (01, 01, 2021)), ("CoronaVac", (01, 02, 2021))]),(87717347115, [("CoronaVac", (01, 01, 2021)), ("CoronaVac", (01, 02, 2021))]), (99999999999, [("Janssen", (01, 08, 2021)), ("Janssen", (01, 08, 2021))])]
--item g)Para realizar esta aplicação, procede-se da forma descrita a seguir e algumas funções auxiliares são necessárias. Inicialmente é verificado se o cidadão já tomou uma dose de vacina. Em caso afirmativo, usando error, exibe uma mensagem de que a primeira dose já foi aplicada. Caso contrário, é verificado se o usuário está cadastrado no sistema SUS. Se não estiver cadastrado, exibe uma mensagem de erro sinalizando o problema. Se estiver, checa se a idade é consistente com a faixa de idade de vacinação corrente. Se não for, exibe uma mensagem de erro sinalizando o problema. Se for, checa se o município é coerente com o município do cadastro SUS. Se não for, exibe uma mensagem de erro para ele atualizar os dados do SUS, pois só é permitida vacinação para residentes no município. Se for, adiciona o usuário no cadastro de vacinados. No momento da adição serão informados os dados constantes em Vacinado. Quando a vacina for Janssen, a tupla Dose deve vir duplicada na lista Doses, sinalizando que o paciente foi completamente imunizada
aplicaPrimDose:: CPF -> CadastroSUS -> FaixaIdade -> Municipio -> Vacina -> Data -> Vacinados -> Vacinados
aplicaPrimDose myCPF myDataBase faixasIdade myMunicipio myVacina myDateVacina myVacinados 
    | not (checkCPFSUS myCPF myDataBase) = error "Cidadao NAO existente para esse banco"
    | (jaTomouPriDose myCPF myVacinados) = error "cidadao JAH tomou a primeira dose"
    | not (idadeAdequada myCPF myDataBase faixasIdade) = error "Cidadao com idade nao compativel para essa faixa"
    | not (checkMunicipioVacinacao myCPF myDataBase myMunicipio) = error "Cidado nao pertence ao municipio para a vacinacao"
    | "Janssen" == myVacina = (:) (myCPF, [(myVacina, myDateVacina), (myVacina, myDateVacina)]) myVacinados
    | otherwise = (:) (myCPF, [(myVacina, myDateVacina)]) myVacinados
     

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

-- item i) Pode ser necessária alguma atualização no cadastro de vacinados. Por exemplo, pode ser necessário consertar o nome da vacina que foi informada incorretamente. Para isso, seria necessária a função abaixo onde o nome correto da vacina é informado, para um dado CPF, numa dada dose. Caso o CPF não conste do cadastro de vacinados, exibe uma mensagem de erro. Caso contrário, se o número da dose informado for superior ao tamanho da lista Doses, uma mensagem de erro deve ser exibida sinalizando que aquela dose ainda não foi ministrada para aquele cidadão. 
atualizaVacina:: CPF -> TipoDose -> Vacina -> Vacinados -> Vacinados
atualizaVacina myCPF myTipoDose myVacina myVacinados 
    | not (checkCPFVacinados myCPF myVacinados) = error "Cidadao NAO existente no banco de vacinados"
    --Caso nao tenha aplica nenhuma dose
    | ((getDosesTomadas myCPF myVacinados) < 1) = error "Cidadao NAO TOMOU NENHUMA vacina ainda"
    --Caso so tenha tomado uma dose, atualiza ela
    |((getDosesTomadas myCPF myVacinados) == 1) = 
        comeco ++ dadoAtualizadoUmaDose ++ fim
    --Caso tenha tomado as duas, escolhe uma das duas para atualizar
    |otherwise = comeco ++ dadoAtualizadoDuasDozes ++ fim
        where 
        position = (findPosVacinado myCPF myVacinados)
        comeco = take (position - 1) myVacinados
        fim = drop position myVacinados 
        --Caso so tenha tomado uma dose
        dadoAtualizadoUmaDose = [(cpf, [(myVacina, data0)]) | (cpf, [(vacina0, data0)]) <- myVacinados, cpf == myCPF]
        --Caso tenha sido duas doses, escolhe uma delas
        dadoAtualizadoDuasDozes 
            | myTipoDose == 1 = [(cpf, [(myVacina, data1), (vacina2, data2)]) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, cpf == myCPF]

            | otherwise = [(cpf, [(vacina1, data1), (myVacina, data2)]) | (cpf, [(vacina1, data1), (myVacina, data2)]) <- myVacinados, cpf == myCPF]            
        

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
      | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myState == (getEstado (getCidadao cpf myDataBase))]
       --Para pessoas que tomaram a segunda dose
      | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myState == (getEstado (getCidadao cpf myDataBase))]
      | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

-- item k) Quantidade de pessoas no município/estado vacinadas por faixa etária e por dose. Procede-se como nos itens anteriores, mas agora se checa, além da dose e do município, a faixa de idade.
quantidadeMunIdDose :: Vacinados -> Municipio -> FaixaIdade -> TipoDose -> CadastroSUS -> Quantidade
quantidadeMunIdDose myVacinados myMunicipio (inicial, final) myTipoDose myDataBase 
    --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
    | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase)), inicial <= (getIdade (getDataNasc (getCidadao cpf myDataBase))), final >= (getIdade (getDataNasc (getCidadao cpf myDataBase)))] 
   --Para pessoas que tomaram a segunda dose
    | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase)), inicial <= (getIdade (getDataNasc (getCidadao cpf myDataBase))), final >= (getIdade (getDataNasc (getCidadao cpf myDataBase)))]
    | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

quantidadeEstIdDose :: Vacinados -> Municipio -> FaixaIdade -> TipoDose -> CadastroSUS -> Quantidade
quantidadeEstIdDose myVacinados myState (inicial, final) myTipoDose myDataBase 
    --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
    | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myState == (getEstado (getCidadao cpf myDataBase)), inicial <= (getIdade (getDataNasc (getCidadao cpf myDataBase))), final >= (getIdade (getDataNasc (getCidadao cpf myDataBase)))] 
    --Para pessoas que tomaram a segunda dose
    | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myState == (getEstado (getCidadao cpf myDataBase)), inicial <= (getIdade (getDataNasc (getCidadao cpf myDataBase))), final >= (getIdade (getDataNasc (getCidadao cpf myDataBase)))]
    | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

-- item l)Quantidade de pessoas no município/estado vacinadas por tipo de vacina e por dose
quantidadeMunVacDose :: Vacinados -> Municipio -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeMunVacDose myVacinados myMunicipio myVacina myTipoDose myDataBase
    --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
    | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase))]
    --Para pessoas que tomaram a segunda dose
    | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myMunicipio == (getMunicipio (getCidadao cpf myDataBase)), myVacina == vacina2]
    | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas" 
quantidadeEstVacDose :: Vacinados -> Estado -> Vacina -> TipoDose -> CadastroSUS -> Quantidade
quantidadeEstVacDose myVacinados myState myVacina myTipoDose myDataBase    
    | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myState == (getEstado (getCidadao cpf myDataBase))] 
    | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myState == (getEstado (getCidadao cpf myDataBase)), myVacina == vacina2]
    | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"




--GETS e outras funçoes auxiliares
getCidadao :: CPF -> CadastroSUS -> Cidadao
getCidadao myCPF myDataBase 
    | cidadaoEncontrado == [] = error "Cidadao nao encontrado"
    | otherwise = head cidadaoEncontrado 
    where cidadaoEncontrado = [cidadao | cidadao <- myDataBase, myCPF == (getCPF cidadao)]

getCPF :: Cidadao -> CPF
getCPF (myCPF, _, _, _, _, _, _, _, _) = myCPF 

getMunicipio :: Cidadao -> Municipio
getMunicipio (_, _, _, _, _, myMunicipio, _, _, _) = myMunicipio

getEstado :: Cidadao -> Estado
getEstado (_, _, _, _, _, _, myState, _, _) = myState

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
                | myDia <= 27 || myMes <= 9 = 2021 - myAno --dia menor que dia 27, e mes menor que mes 9, faz um calculo normal de idade
                | otherwise  = 2021 - myAno - 1
                where
                    myDia = (first myNasci)
                    myMes = (second myNasci)
                    myAno = (third myNasci)
----Para cadastrar um novo cidadão, inicialmente é checado se o CPF já existe ou não no sistema com a função 
checkCPFSUS :: CPF -> CadastroSUS -> Bool
checkCPFSUS myCPF myDataBase = or [myCPF == cpfDataBase| (cpfDataBase, _, _, _, _, _, _, _, _) <- myDataBase] --Se pelo menos um for verdadeiro na lista, já é o bastante, por isso a funcao "or"

----Para cadastrar um novo cidadao para vacinar, inicialmente é checado se o CPF já existe ou não no sistema com a função 
checkCPFVacinados :: CPF -> Vacinados -> Bool
checkCPFVacinados myCPF myVacinados = or [myCPF == cpfMyVacinados | (cpfMyVacinados, _) <- myVacinados]

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

--Verificar se data de aplicacao da segunda dose vem depois da segunda
dataSeguDoseValida :: CPF -> Data -> Vacinados -> Bool
dataSeguDoseValida myCPF myDateVacina myVacinados = not ([] ==  [dataNova | (cpf, [(vacina, dataNova)]) <- myVacinados, myCPF == cpf, dataDepois myDateVacina dataNova])

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

--Escreva um função que dada uma string, devolva a mesma string com o caracter \n ao final. Ex: se a entrada for “gato” retornará “gato\n”.
addBarraN :: String -> String 
addBarraN palavra = palavra ++ "\n"

--Use a questão anterior, para construir a função que dada uma lista de strings devolve uma única string  contendo a concatenação  das srings da lista fornecida, tal que estas strings estejam separadas por \n. Ex: se a entrada for [“gato”, “e”, “rato”] retornará “gato\ne\nrato\n”
addListaBarraN :: [String] -> String
addListaBarraN lista = concat [addBarraN palavra | palavra <- lista]

--Verificar se usuario ja tomou primeiro dose
--Primeiro ver se a lista veio vazio, se nao veio(False) eh porque a primeira dose foi tomada, entao inverto o bool para True athena
jaTomouPriDose :: CPF -> Vacinados -> Bool
jaTomouPriDose myCPF myVacinados = not ([] == [doses | (cpf, doses) <- myVacinados, myCPF == cpf])

--Verificar se a idade para vacina eh adequada
---Primeiro ver se a lista veio vazio, se nao veio(False), eh porque a pessoa esta apata a receber a dose, entao inverto o bool (True)
idadeAdequada :: CPF -> CadastroSUS -> FaixaIdade -> Bool
idadeAdequada myCPF myDataBase faixasIdade = not ([] ==  [cidadao | cidadao <- myDataBase, (getCPF cidadao) == myCPF, (getIdade (getDataNasc cidadao)) >= (fst faixasIdade), (getIdade (getDataNasc cidadao)) <= (snd faixasIdade)])

--Verificar se o municipio da vacinacao esta certo
-----Primeiro ver se a lista veio vazio, se nao veio(False), eh porque a pessoa esta no Municipio e esta apata a receber a dose, entao inverto o bool (True)
checkMunicipioVacinacao :: CPF -> CadastroSUS -> Municipio -> Bool
checkMunicipioVacinacao myCPF myDataBase myMunicipio = not ([] ==  [cidadao | cidadao <- myDataBase, (getCPF cidadao) == myCPF, (getMunicipio cidadao) == myMunicipio])

--Verificar se usuario ja tomou primeiro dose
--Primeiro pega a lista que possuia como unico elemento(por isso o head, já que é so um elemento) uma lista que tem tuplas de vacinas e datas

getVacinaData :: CPF -> Vacinados -> Doses
getVacinaData myCPF myVacinados =  head [dosesTomadas | (cpf, dosesTomadas) <- myVacinados, myCPF == cpf]

--Ai eu conto quantas vacinas tem nessa lista
getDosesTomadas :: CPF -> Vacinados -> Int
getDosesTomadas myCPF myVacinados = length (getVacinaData myCPF myVacinados)

--Cadastros pre-definidos para teste no cadastroSUS
maria :: Cidadao
maria = (53471688765, "Maria Silva", 'F', (21,12,1984),"Rua A, 202","Gloria", "SE", "999880300", "msilva@gmail.com")

marcos :: Cidadao
marcos = (53499988765, "Marcos Santos", 'M', (25,10,1994),"Rua D, 202","Aracaju", "SE", "999880501","msilva@gmail.com")


