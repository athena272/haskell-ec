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

--item a)O cidadão pode querer modificar algum desses dados, por exemplo, o número de telefone ou endereço. Para isto, precisamos de funções de atualização dos dados no cadastro, passando os novos dados. Para simplificar o sistema, vamos supor apenas as funções de atualização do endereço e do telefone, já que as demais atualizações seguiriam o mesmo princípio. No processo de atualização, o cadastro SUS informado será copiado para um novo cadastro SUS. Neste novo cadastro, os registros de outros cidadãos permanecerão inalterados e somente os dados do cidadão que está sendo atualizado sofrerão modificações.
atualizaEnderecoSUS :: CPF -> CadastroSUS -> Endereco -> CadastroSUS
atualizaEnderecoSUS myCPF [] newAdress = error "Cidadao nao esta no banco de cadastro"
atualizaEnderecoSUS myCPF (humanoSUS:restoList)  newAdress
    | (getCPFSUS humanoSUS == myCPF) = updateAdress humanoSUS newAdress : restoList
    | otherwise = humanoSUS : atualizaEnderecoSUS myCPF restoList newAdress
    
----------------------Funcoes Auxiliares
getCPFSUS :: Cidadao -> CPF
getCPFSUS (myCPF, _, _, _, _, _, _, _, _) = myCPF

updateAdress :: Cidadao -> Endereco -> Cidadao 
updateAdress (cpf,nome,gender,nasc,adress,muni,state,tel,email) newAdress = (cpf,nome,gender,nasc,newAdress,muni,state,tel,email)

--item b) Quando um cidadão falece, a família tem que notificar o fato em um posto de saúde, para que ele seja retirado do cadastro corrente do SUS. Como há uma verificação do atestado de óbito, isto só pode ser feito no posto. O sistema precisará da função abaixo. Se o CPF existir no cadastro corrente do SUS, o registro do cidadão deve ser completamente excluído, gerando um novo cadastro sem os dados deste cidadão. Se o CPF não existir, uma mensagem de erro, usando error, sinalizando que o cidadão não pertence ao cadastro deve ser exibida.
removeSUS :: CPF -> CadastroSUS -> CadastroSUS
removeSUS myCPF [] = error "Cidadao nao esta no banco de cadastro" --verificar se o CPF da pessoa morta existe
removeSUS myCPF (humanoSUS:restoList) 
    | (getCPFSUS humanoSUS == myCPF) = restoList
    | otherwise = humanoSUS : removeSUS myCPF restoList

--item c) Estas funções precisam de funções auxiliares para gerar uma lista de quantidades por faixas de idade, para depois gerar a exibição usando as funções 
geraListaMunicipioFaixas :: CadastroSUS -> Municipio -> Data -> [FaixaIdade] -> [(FaixaIdade, Quantidade)]
geraListaMunicipioFaixas (humanoSUS:restoList) myMunicipio dataAtual listaFaixasIdade

