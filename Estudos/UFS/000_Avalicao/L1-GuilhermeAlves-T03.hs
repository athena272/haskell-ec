--GUILHERME ROSÁRIO ALVES
--202100022784

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
    [(26716347665, "Paulo Souza", 'M', (11,10,1996),"Rua A, 202","Muribeca", "SE", "999997000", "psouza@gmail.com"),
    (87717347115, "Ana Reis",'F', (5,4,1970), "Rua B, 304","Aracaju", "SE", "999826004", "areis@gmail.com"),(99999999999, "Guilherme Alves", 'M', (02,07,2002),"Rua C, 405","Salgado", "SE", "999997044", "guilherme@gmail.com"), 
    (88888888888, "Esmeralda Oliveira", 'F', (09,09,2003),"Rua D, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"), 
    (10101010101, "Fernanda Menezes", 'F', (01,04,2000),"Rua E, 506","Lagarto", "SE", "999996025", "esmeralda@gmail.com"),
    (24304304037, "Carlos Ferreira", 'M', (1, 6, 2019), "Avenida A, 617", "Aracaju", "SE", "888884567", "Davi@outlok.com.br"),
    (42618186808, "Gabriel Johnson", 'F', (24, 2, 2015), "Travessa Jerusalem, 194", "Itabaiana", "SE", "676724019", "Jose@outlok.com.br"),
    (30123318811, "Jose Johnson", 'F', (23, 3, 1995), "Avenida 28 BC, 215", "Aracaju", "SE", "676724019", "Emanuel@Pereira.com.br"),
    (88369672235, "Inacio Alves", 'F', (25, 3, 1936), "Rua Brasil Martinho Valle, 560", "Aracaju", "SE", "107892190", "Miguel@Pereira.com.br"),
    (27478099652, "Leonardo Rodrigues", 'M', (25, 10, 1988), "Travessa Tereza Cristina, 348", "Nossa Senhora do Socorro", "SE", "749200312", "Bernardo@Ferreira.com.br"),
    (72282496478, "Emanuel Pereira", 'F', (20, 4, 1939), "Travessa Jerusalem, 247", "Aracaju", "SE", "749200312", "Gustavo@hotmail.com.br"),
    (91683896248, "Jose Smith", 'F', (30, 4, 1943), "Rua Brasil Martinho Valle, 365", "Lagarto", "SE", "107892190", "Jose@uol.com.br"),
    (97916395954, "Jose Pereira", 'F', (20, 7, 1991), "Travessa Jerusalem, 46", "Nossa Senhora do Socorro", "SE", "150712500", "Emanuel@infonet.com.br"),
    (60523799951, "Ignacio Pereira", 'M', (7, 7, 1977), "Rua Brasil Martinho Valle, 998", "Nossa Senhora do Socorro", "SE", "888884567", "Jose@hotmail.com.br"),
    (45251664016, "Carlos Smith", 'M', (13, 7, 1964), "Avenida A, 272", "Aracaju", "SE", "676724019", "Gustavo@Pereira.com.br"),
    (91870465759, "Gustavo Oliveira", 'M', (28, 4, 1944), "Rua A, 204", "Aracaju", "SE", "107892190", "Davi@Ferreira.com.br"),
    (13508690972, "Ignacio Souza santos", 'M', (10, 9, 1970), "Travessa Jerusalem, 611", "Itabaiana", "SE", "150712500", "Miguel@Pereira.com.br"),(32829450561, "Jose Souza santos", 'M', (22, 6, 1937), "Rua Joana Ribeiro, 540", "Aracaju", "SE", "676724019", "Bernardo@Ferreira.com.br"),
    (66281994769, "Gabriel Rodrigues", 'M', (20, 3, 1936), "Travessa Tereza Cristina, 354", "Lagarto", "SE", "888884567", "Jose@uol.com.br"),
    (76976598156, "Gabriel Pereira", 'M', (11, 12, 1944), "Rua Brasil Martinho Valle, 998", "Lagarto", "SE", "888884567", "Gustavo@Alves.com.br"),
    (91696131497, "Inacio Santos", 'M', (26, 5, 1977), "Avenida 28 BC, 824", "Lagarto", "SE", "107892190", "Davi@Ferreira.com.br"),
    (73306091843, "Gustavo Johnson", 'M', (14, 10, 1953), "Travessa Tereza Cristina, 358", "Aracaju", "SE", "150712500", "Jose@Pereira.com.br"),
    (72103643100, "Carlos Rodrigues", 'F', (17, 9, 2016), "Rua Brasil Martinho Valle, 272", "Lagarto", "SE", "820101558", "Jose@outlok.com.br"),
    (35457034065, "Ignacio Smith", 'F', (4, 3, 1942), "Rua A, 280", "Itabaiana", "SE", "820101558", "Miguel@infonet.com.br"),
    (84655918512, "Leonardo Santos", 'F', (26, 5, 1942), "Travessa Tereza Cristina, 311", "Lagarto", "SE", "888884567", "Ignacio@Ferreira.com.br"),
    (66361636097, "Emanuel Pereira", 'F', (14, 1, 1972), "Avenida 28 BC, 912", "Nossa Senhora do Socorro", "SE", "676724019", "Leonardo@Ferreira.com.br"),
    (56399785622, "Gustavo Silva", 'F', (28, 7, 1974), "Rua Joana Ribeiro, 516", "Lagarto", "SE", "107892190", "Carlos@Pereira.com.br"),
    (71776925819, "Gabriel Silva", 'F', (26, 2, 2017), "Travessa Jerusalem, 257", "Nossa Senhora do Socorro", "SE", "150712500", "Ignacio@gmail.com.br"),
    (72077627524, "Gabriel Silva", 'M', (25, 9, 2000), "Rua Brasil Martinho Valle, 74", "Lagarto", "SE", "888884567", "Inacio@Pereira.com.br"),
    (98188814278, "Jose Silva", 'M', (18, 2, 1935), "Rua Joana Ribeiro, 870", "Nossa Senhora do Socorro", "SE", "150712500", "Jose@uol.com.br"),
    (2105747717, "Gustavo Alves", 'M', (30, 4, 1955), "Avenida 28 BC, 68", "Itabaiana", "SE", "888884567", "Jose@infonet.com.br"),
    (5462490372, "Emanuel Oliveira", 'M', (9, 1, 1992), "Travessa Tereza Cristina, 889", "Aracaju", "SE", "820101558", "Gustavo@infonet.com.br"),
    (9618817308, "Ignacio Alves", 'M', (24, 5, 2003), "Travessa Jerusalem, 33", "Nossa Senhora do Socorro", "SE", "820101558", "Jose@Pereira.com.br"),
    (25003392400, "Gabriel Rodrigues", 'M', (29, 7, 2012), "Travessa Tereza Cristina, 203", "Aracaju", "SE", "107892190", "Gustavo@Alves.com.br"),
    (77873720221, "Jose Pereira", 'M', (27, 3, 1951), "Rua Joana Ribeiro, 701", "Itabaiana", "SE", "820101558", "Miguel@outlok.com.br"),
    (27243025429, "Gustavo Oliveira", 'F', (5, 3, 1936), "Travessa Tereza Cristina, 224", "Itabaiana", "SE", "107892190", "Gabriel@uol.com.br"),
    (16213902712, "Ignacio Santos", 'F', (5, 6, 1980), "Rua Brasil Martinho Valle, 49", "Aracaju", "SE", "749200312", "Davi@infonet.com.br"),
    (54204962073, "Gustavo Pereira", 'F', (8, 5, 2005), "Travessa Tereza Cristina, 691", "Lagarto", "SE", "888884567", "Jose@hotmail.com.br"),
    (33529650641, "Leonardo Santos", 'F', (2, 11, 2018), "Rua Brasil Martinho Valle, 613", "Itabaiana", "SE", "749200312", "Emanuel@Ferreira.com.br"),
    (67733182165, "Carlos Silva", 'F', (24, 12, 2015), "Avenida 28 BC, 829", "Itabaiana", "SE", "676724019", "Bernardo@Ferreira.com.br"),
    (92701485891, "Emanuel Smith", 'F', (6, 2, 1948), "Rua Joana Ribeiro, 531", "Aracaju", "SE", "150712500", "Davi@outlok.com.br"),
    (52993562899, "Gabriel Souza santos", 'F', (27, 10, 1986), "Travessa Jerusalem, 918", "Lagarto", "SE", "107892190", "Inacio@hotmail.com.br"),
    (64078372212, "Carlos Santos", 'F', (14, 6, 1936), "Rua Brasil Martinho Valle, 740", "Aracaju", "SE", "676724019", "Leonardo@gmail.com.br"),
    (42526230308, "Emanuel Rodrigues", 'M', (9, 8, 2002), "Rua Joana Ribeiro, 302", "Nossa Senhora do Socorro", "SE", "749200312", "Gustavo@hotmail.com.br"),
    (94259444688, "Leonardo Ferreira", 'M', (9, 12, 1992), "Rua A, 125", "Itabaiana", "SE", "888884567", "Jose@Pereira.com.br"),
    (59984593668, "Leonardo Santos", 'M', (14, 8, 1931), "Avenida A, 596", "Nossa Senhora do Socorro", "SE", "107892190", "Leonardo@hotmail.com.br")]


bancoTest:: [Cidadao]
bancoTest = [   (87717347115, "Ana Reis", 'F', (5, 4, 1970), "Rua B, 304", "Aracaju", "SE", "999826004", "pareis@gmail.com"),
                (26716347665, "Paulo Souza", 'M', (11, 10, 1996), "Rua A, 202", "Muribeca", "SE", "999997000", "souza@gmail.com"),
                (56987321456, "Flavio Inácio", 'M', (11, 03, 2000), "Rua E Conjunto, 202", "Japaratuba", "SE", "999997000", "flavio@gmail.com"),
                (87067956846, "Lucas Machado Gomes", 'M', (19, 3, 1956), "Rua Eunicio Teixeira, 202", "Rio Branco", "AC", "991060740", "lucas.gomes@globo.com"),
                (22423805160, "Gabriel Ducati Teixeira", 'M', (21, 10, 1992), "Rua Condado, 424", "Porto Alegre", "RS", "993127455", "gabriel.teixeira@globo.com"),
                (59429878824, "Guilherme Gomes Machado", 'M', (9, 11, 1996), "Rua Anita Ferraz, 821", "São Paulo", "SP", "967452650", "guilherme.machado@uol.com.br"),
                (50459763628, "Carlos Amaral Teixeira", 'M', (9, 7, 1954), "Rua Anita Ferraz, 450", "São Paulo", "SP", "925310918", "carlos.teixeira@yahoo.com"),
                (08698996604, "Mauro Gomes Ducati", 'M', (15, 5, 1990), "Travessa Ano Novo, 204", "Rio Branco", "AC", "997873863", "mauro.ducati@icloud.com"),
                (48474464455, "Carlos Machado Teixeira", 'M', (25, 8, 1996), "Quadra CLS 103, 447", "Brasília", "DF", "933117851", "carlos.teixeira@gmail.com"),
                (84031558830, "Lucas Teixeira Amaral", 'M', (23, 9, 1977), "Rua Anita Cajado, 738", "Salvador", "BA", "945185400", "lucas.amaral@hotmail.com"),
    (55431499726, "Arthur Machado Ducati", 'M', (10, 2, 1986), "Rua Condado, 422", "Porto Alegre", "RS", "916061385", "arthur.ducati@hotmail.com"),
    (38730515408, "Matheus Gomes Machado", 'M', (28, 5, 1963), "Praça Anita Garibaldi, 539", "Campinas", "SP", "963430836", "matheus.machado@gmail.com"),
    (70742814092, "Heitor Machado Ducati", 'M', (17, 2, 1989), "Rua Anita Cajado, 975", "Salvador", "BA", "964861299", "heitor.ducati@gmail.com"),
    (09195651233, "Heitor Amaral Gomes", 'M', (27, 1, 1994), "Rua Anfibólios, 512", "Belo Horizonte", "MG", "989870737", "heitor.gomes@uol.com.br"),
    (57613464601, "João Amaral Machado", 'M', (7, 7, 1979), "Travessa Ano Novo, 850", "Rio Branco", "AC", "944700834", "joão.machado@hotmail.com"),
    (34686118891, "João Ducati Gomes", 'M', (5, 9, 1975), "Praça Anita Garibaldi, 519", "Campinas", "SP", "928864626", "joão.gomes@icloud.com"),
    (36156451382, "Matheus Gomes Machado", 'M', (6, 2, 1973), "Rua Antenor Gomes de Oliveira, 628", "Maceió", "AL", "958810484", "matheus.machado@uol.com.br"),
    (98648566002, "Arthur Ducati Gomes", 'M', (23, 3, 1963), "Rua Anita Ferraz, 32", "São Paulo", "SP", "924800296", "arthur.gomes@hotmail.com"),
    (15876745138, "Pedro Ducati Gomes", 'M', (22, 6, 1954), "Rua Anita Garibald, 120", "Manaus", "AM", "912360027", "pedro.gomes@yahoo.com"),
    (43764673400, "Heitor Amaral Machado", 'M', (19, 4, 1996), "Quadra CLS 103, 189", "Brasília", "DF", "28981833", "heitor.machado@globo.com"),
    (34795174806, "Matheus Gomes Machado", 'M', (11, 5, 1972), "Travessa Ângelo Valler, 105", "Piracicaba", "SP", "914441493", "matheus.machado@hotmail.com"),
    (52592444513, "João Amaral Machado", 'M', (27, 10, 1999), "Travessa Ano Novo, 514", "Rio Branco", "AC", "939465389", "joão.machado@yahoo.com"),
    (14205128703, "Carlos Gomes Ducati", 'M', (3, 7, 1985), "Rua Anita Cajado, 833", "Salvador", "BA", "935077028", "carlos.ducati@globo.com"),
    (67556301443, "Davi Machado Teixeira", 'M', (11, 10, 1972), "Quadra CLS 103, 518", "Brasília", "DF", "947901564", "davi.teixeira@gmail.com"),
    (37297814644, "Arthur Amaral Machado", 'M', (21, 12, 1987), "Quadra CLS 103, 981", "Brasília", "DF", "997570558", "arthur.machado@icloud.com"),
    (77838071941, "Gabriel Gomes Teixeira", 'M', (19, 6, 1973), "Rua Anita Garibald, 527", "Manaus", "AM", "967345626", "gabriel.teixeira@gmail.com"),
    (65365757254, "Davi Teixeira Ducati", 'M', (12, 10, 1997), "Rua Anita Cajado, 664", "Salvador", "BA", "938882449", "davi.ducati@yahoo.com"),
    (03516652853, "Bernardo Teixeira Machado", 'M', (4, 11, 1991), "Quadra CLS 103, 46", "Brasília", "DF", "917032109", "bernardo.machado@hotmail.com"),
    (96592485809, "Matheus Gomes Ducati", 'M', (18, 4, 1954), "Rua Anfibólios, 942", "Belo Horizonte", "MG", "981246170", "matheus.ducati@uol.com.br"),
    (26995464290, "Carlos Machado Gomes", 'M', (1, 2, 1983), "Rua Anita Cajado, 235", "Salvador", "BA", "956515460", "carlos.gomes@globo.com"),
    (10638318653, "Davi Machado Ducati", 'M', (8, 11, 1963), "Travessa Ano Novo, 337", "Rio Branco", "AC", "961876259", "davi.ducati@yahoo.com"),
    (41448248701, "Bernardo Ducati Amaral", 'M', (26, 11, 1991), "Rua Álvaro Anes, 102", "São Paulo", "SP", "998612095", "bernardo.amaral@gmail.com"),
    (54106727714, "Pedro Ducati Amaral", 'M', (5, 6, 1977), "Quadra CLS 103, 954", "Brasília", "DF", "931162139", "pedro.amaral@icloud.com"),
    (63099185086, "Carlos Gomes Machado", 'M', (10, 3, 1991), "Rua Condado, 733", "Porto Alegre", "RS", "916936937", "carlos.machado@yahoo.com"),
    (75442170860, "Gabriel Ducati Gomes", 'M', (4, 9, 1965), "Praça Anita Garibaldi, 797", "Campinas", "SP", "914168590", "gabriel.gomes@uol.com.br"),
    (53004578760, "Arthur Amaral Ducati", 'M', (27, 2, 1956), "Travessa Ano Novo, 942", "Rio Branco", "AC", "945675621", "arthur.ducati@icloud.com"),
    (31330654080, "Pedro Ducati Amaral", 'M', (19, 2, 1983), "Rua Anita Ferraz, 716", "São Paulo", "SP", "915528935", "pedro.amaral@gmail.com"),
    (24996526831, "Bruno Cardoso", 'M', (30, 11, 1992), "Rua João Borba Maranhão, 699", "Recife", "PE", "925518766", "brunorodriguescardoso@armyspy.com"),
    (91169654509, "Matheus Rodrigues", 'M', (21, 09, 1971), "Avenida Central, 253", "Limeira", "SP", "994288630", "matheuscostarodrigues@jourrapide.com"),
    (31665922702, "Caio Barros", 'M', (01, 08, 1938), "Rua dos Crisântemos, 1584", "Rio de Janeiro", "RJ", "999997000", "caiodiasbarros@dayrep.com"),
    (80506181294, "Antônio Pereira", 'M', (28, 12, 1929), "Rua Romanos, 1196", "Cambé", "PR", "931528696", "antoniosilvapereira@teleworm.us"),
    (27609161381, "Igor Carvalho", 'M', (17, 05, 1960), "Rua N, 442", "Várzea Grande", "MT", "931082575", "igorsousacarvalho@jourrapide.com"),
    (23116918562, "Thiago Goncalves", 'M', (06, 02, 1942), "Rua Gerênios, 1688", "Vila Velha", "ES", "965828349", "thiagolimagoncalves@gustr.com"),
    (95896635168, "Rafael Barros", 'M', (11, 04, 1921), "Vila Novo Paraíso, 16", "Aracaju", "SE", "967566304", "rafaelmartinsbarros@einrot.com"),
    (68914093220, "Daniel Souza", 'M', (01, 02, 2013), "Rua Francisco da Costa Lins, 1654", "Recife", "PE", "920237199", "danielazevedosouza@armyspy.com"),
    (50498614034, "Victor Rocha", 'M', (18, 05, 2015), "Rua das Orquídeas, 166", "Pirassununga", "SP", "931895029", "victorpereirarocha@armyspy.com"),
    (64742387392, "Marcos Alves", 'M', (09, 11, 1929), "Rua Maria de Lourdes Almeida, 1124", "Arapiraca", "AL", "984714774", "marcosrodriguesalves@jourrapide.com"),
    (37566004247, "Lucas Pinto", 'M', (25, 08, 1919), "Rua Costa e Silva 1983", "Aparecida de Goiânia", "GO", "982608883", "lucasmelopinto@cuvox.de"),
    (56987321456, "Julian Santos", 'M', (28, 07, 1951), "Rua Cinco, 746", "Sumaré", "SP", "926073288", "julianalmeidasantos@einrot.com"),
    (88551353098, "Ryan Cardoso", 'M', (21, 08, 2000), "Avenida Doutor Artur Bernardes, 656", "Sorocaba", "SP", "957036975", "ryancastrocardoso@gustr.com"),
    (67816887744, "Kaua Cardoso", 'M', (12, 02, 1941), "Praça Henry Ford, 1028", "Araçatuba", "SP", "930669632", "kau@superrito.com"),
    (10307558843, "Julian Melo", 'M', (15, 05, 2009), "Rua São Sérgio, 1179", "Santos", "SP", "954342444", "juliancunhamelo@armyspy.com"),
    (57975532959, "Martim Cavalcanti", 'M', (21, 12, 1985), "Rua José Horácio, 1701", "Londrina", "PR", "929172319", "martimcunhamelo@superrito.com"),
    (32254586947, "Luís Melo", 'M', (15, 08, 2000), "Rua BS 15 C, 699", "Goiânia", "GO", "977072073", "luiscunhamelo@superrito.com"),
    (18697038049, "Daniel Goncalves", 'M', (12, 12, 1964), "Rua dos Macunis, 609", "Campinas", "SP", "937156151", "daniel@gmail.com"),
    (34290105785, "Renan Fernandes", 'M', (19, 10, 1948), "Rua João Sigrist, 470", "Campinas", "SP", "939719494", "renanmelofernandes@jourrapide.com"),
    (17286791095, "Caio Barbosa", 'M', (07, 01, 1979), "Rua Doutor Francisco de Souza, 488", "São José dos Campos", "SP", "950412296", "caio@gmail.com"),
    (84565794675, "Davi Castro", 'M', (13, 11, 1947), "Beco São Geraldo, 480", "Belo Horizonte", "MG", "945832380", "davi@gmail.com"),
    (60053722701, "Kauan Fernandes", 'M', (18, 07, 2001), "Rua Aluízio Davis, 303", "Belo Horizonte", "MG", "992073911", "kauansousafernandes@superrito.com"),
    (28251137861, "Guilherme Gomes Teixeira", 'M', (4, 9, 1960), "Quadra CLS 103, 611", "Brasília", "DF", "948421943", "guilherme.teixeira@yahoo.com"),
    (86096726461, "Matheus Amaral Gomes", 'M', (14, 1, 1954), "Rua Anfibólios, 42", "Belo Horizonte", "MG", "922271249", "Matheus@gmail.com"),
    (53980790428, "Mauro Machado Teixeira", 'M', (12, 7, 1951), "Travessa Ano Novo, 719", "Rio Branco", "AC", "972901808", "mauro.teixeira@gmail.com"),
    (56254649322, "Luis Almeida", 'M', (26, 5, 1994), "Rua dos Carijós, 202", "Belo Horizonte", "MG", "670725957", "Almeida@gmail.com"),
    (60411837446, "Samuel Fernandes", 'M', (1, 5, 1963), "Rua Carlos Augusto Cornelsen, 202", "Curitiba", "PR", "318361413", "Fernandes@gmail.com"),
    (99959556100, "Kauan Lima", 'M', (25, 5, 1954), "Rua Maria Luísa do Val Penteado, 202", "São Paulo", "SP", "888884567", "Kauan@gmail.com"),
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
        (11144411717, "Anderson Oliveira Lima" , 'X', (30,10,1940), "Rua Ovelarque Ramos, 250"       , "São Domingos"  , "SE", "(79) 9 8876 0026", "anderson_lolzeiro@hotmail.com"      ),
        (11155511218, "Luan Argolo Silva "     , 'M', (27,09,1999), "Rua Pitagoras , 345"            , "Tobias Barreto", "AM", "(92) 9 9608 5620", "luan.argolo@hgmail.com"             )
    ]

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
--Se a data de nascimento estiver antes(ser menor) do dia atual e do mes atual, a pessoa ja fez aniversario, se não, ela ainda é um ano mais jovem
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

----------------------Funcoes Auxiliares(nesse contexto, usei funcoes dos slides que adicionam \n em palavras)
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

bancoTestVac :: Vacinados
bancoTestVac =
    [( 18697038049, [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )] ),
    ( 34290105785, [ ("Pfizer",      (10,08,2021)) ] ),
    ( 17286791095, [ ("CoronaVac",   (10,02,2021)) ] ), 
    ( 84565794675, [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),
    ( 60053722701, [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
    ( 28251137861, [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),                      
    ( 86096726461, [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )]),
    ( 53980790428, [ ("Pfizer",      (10,08,2021)) ] ),
    ( 56254649322, [ ("CoronaVac",   (10,02,2021)) ] ),    
    ( 60411837446, [ ("CoronaVac",   (10,02,2021)) ] ),    
    ( 99959556100, [ ("AstraZeneca", (10,02,2021)) ] ),
    ( 99988877566, [ ("Pfizer",      (10,08,2021)) ] ),                                 
    ( 88877766478, [ ("AstraZeneca", (10,02,2021)) ] ),                                 
    ( 78965412585, [ ("Pfizer",      (10,02,2021)) ] ),                                 
    ( 11144411717, [ ("AstraZeneca", (10,02,2021)) ] ),                                 
    ( 11122211511, [ ("CoronaVac",   (10,02,2021)) ] ),                                 
    ( 78965412885, [ ("Janssen",     (10,02,2021)), ("Janssen",   (10,02,2021) )]),     
    ( 11122211515, [ ("Pfizer",     (05,03,2021)), ("Pfizer",    (05,06,2021)  )]),    
    ( 11133311516, [ ("CoronaVac",  (10,02,2021)), ("CoronaVac", (10,03,2021)  )])  ]

--item g)Para realizar esta aplicação, procede-se da forma descrita a seguir e algumas funções auxiliares são necessárias. Inicialmente é verificado se o cidadão já tomou uma dose de vacina. Em caso afirmativo, usando error, exibe uma mensagem de que a primeira dose já foi aplicada. Caso contrário, é verificado se o usuário está cadastrado no sistema SUS. Se não estiver cadastrado, exibe uma mensagem de erro sinalizando o problema. Se estiver, checa se a idade é consistente com a faixa de idade de vacinação corrente. Se não for, exibe uma mensagem de erro sinalizando o problema. Se for, checa se o município é coerente com o município do cadastro SUS. Se não for, exibe uma mensagem de erro para ele atualizar os dados do SUS, pois só é permitida vacinação para residentes no município. Se for, adiciona o usuário no cadastro de vacinados. No momento da adição serão informados os dados constantes em Vacinado. Quando a vacina for Janssen, a tupla Dose deve vir duplicada na lista Doses, sinalizando que o paciente foi completamente imunizada
aplicaPrimDose:: CPF -> CadastroSUS -> FaixaIdade -> Municipio -> Data -> Vacina -> Data -> Vacinados -> Vacinados
aplicaPrimDose myCPF myDataBase faixasIdade myMunicipio dataAtual myVacina myDateVacina myVacinados 
    --Verifica se o cidadao esta no banco do SUS
    | not (checkCPFSUS myCPF myDataBase) = error "Cidadao NAO existente para esse banco"
    --verifica se a primeira dose ja foi aplica
    | (jaTomouPriDose myCPF myVacinados) = error "cidadao JAH tomou a primeira dose"
    --verifica se o cidadao esta na faixa para tomar a dose
    | not (idadeAdequada myCPF myDataBase dataAtual faixasIdade) = error "Cidadao com idade nao compativel para essa faixa"
    --verifica se o cidadao esta no municipio em que a vacinacao esta acontecendo
    | not (checkMunicipioVacinacao myCPF myDataBase myMunicipio) = error "Cidado nao pertence ao municipio para a vacinacao"
    --Se a vacinacao de aplicacao for a Janssen, a aplicacao uma dose unica(vem em dose dupla)
    | "Janssen" == myVacina = (:) (myCPF, [(myVacina, myDateVacina), (myVacina, myDateVacina)]) myVacinados
    --E se passar por tudo isso, aplica uma dose normal de vacina
    | otherwise = (:) (myCPF, [(myVacina, myDateVacina)]) myVacinados

----------------------Funcoes Auxiliares
--Verificar se usuario ja tomou primeiro dose
--Primeiro ver se a lista veio vazio, se nao veio(False) eh porque a primeira dose foi tomada, entao inverto o bool para True 
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
    --Verifica se o cidadao esta no banco do SUS
    | not (checkCPFVacinados myCPF myVacinados) = error "Cidadao NAO existente no banco de vacinados"
    --Verifica se o cidadao tomou duas doses
    | ((getDosesTomadas myCPF myVacinados) == 2) = error "cidadao JAH tomou DUAS doses"
    --Verifica se em uma situacao bizarra, a pessoa tomou mais de duas doses
    | ((getDosesTomadas myCPF myVacinados) > 2) = error "Como tu tomou mais de duas vacinas?"
    --Verifica se a data da segunda dose, venho depois da primeira
    | not (dataSeguDoseValida myCPF myDateVacina myVacinados) = error "Datas nao fazem sentidos" 
    --Caso passe por tudo isso, atualiza/aplica a segunda dose
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

--Verificar se usuario ja tomou primeiro dose
--Primeiro pega a lista que possuia como unico elemento(por isso o head, já que é so um elemento) uma lista que tem tuplas de vacinas e datas
getVacinaData :: CPF -> Vacinados -> Doses
getVacinaData myCPF myVacinados =  head [dosesTomadas | (cpf, dosesTomadas) <- myVacinados, myCPF == cpf]

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
      --Se colocar um tipo de dose diferente, da um erro
      | otherwise = error "Informacoes relevantes ou suficientes NAO foram encontradas"

quantidadeDoseEst :: Vacinados -> TipoDose -> Estado -> CadastroSUS -> Quantidade 
quantidadeDoseEst myVacinados myTipoDose myState myDataBase
      --Para pessoas que tomaram a primeira dose(mesmo que tenham tomado a segunda dose, ela entraria na contagem, jah que quem tomou a segunda tose, tomou a primeira em algum momento)
      | myTipoDose == 1 = length [cpf | (cpf, _) <- myVacinados, myState == (getState (getCidadao cpf myDataBase))]
       --Para pessoas que tomaram a segunda dose
      | myTipoDose == 2 = length [(vacina2, data2) | (cpf, [(vacina1, data1), (vacina2, data2)]) <- myVacinados, myState == (getState (getCidadao cpf myDataBase))]
      --Se colocar um tipo de dose diferente, da um erro
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
quantidadeMunAtrasados :: Vacinados -> CadastroSUS -> Municipio -> Data -> Quantidade
quantidadeMunAtrasados myVacinados myDataBase myMunicipio dataAtual = length [cpf | (cpf, dosesTomadas) <- myVacinados, (getMunicipio (getCidadao cpf myDataBase)) == myMunicipio, (vacinaEstarAtrasada (getCidadao cpf myDataBase) myVacinados dataAtual), (getDosesTomadas cpf myVacinados) == 1]


quantidadeEstAtrasados :: Vacinados -> CadastroSUS -> Estado -> Data -> Quantidade
quantidadeEstAtrasados myVacinados myDataBase myState dataAtual = length [cpf | (cpf, dosesTomadas) <- myVacinados, (getState (getCidadao cpf myDataBase)) == myState, (vacinaEstarAtrasada (getCidadao cpf myDataBase) myVacinados dataAtual), (getDosesTomadas cpf myVacinados) == 1]

----------------------Funcoes Auxiliares
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

--Pegar a data da vacina
getVacinaData' :: Cidadao -> Vacinados -> Data
getVacinaData' myCidadao myVacinados =  head [dataDose | (cpf, dosesTomadas) <- myVacinados, (vacina, dataDose) <- dosesTomadas,(getCPFSUS myCidadao) == cpf]

--Retornar se a data esta atrasada pela vacina
vacinaEstarAtrasada :: Cidadao -> Vacinados -> Data -> Bool
vacinaEstarAtrasada myCidadao myVacinados dataAtual 
    | (findVacina myCidadao myVacinados) == "CoronaVac" && diasAtrasados (getVacinaData' myCidadao myVacinados) dataAtual > 21 = True
    | (findVacina myCidadao myVacinados) /= "CoronaVac" && diasAtrasados (getVacinaData' myCidadao myVacinados) dataAtual > 90 = True
    | otherwise = False

diasAtrasados :: Data -> Data -> Quantidade 
diasAtrasados dataVacina dataAtual 
    --meses iguais 
    | (mesAtual == mesVac) && (anoAtual == anoVac) = diaAtual - diaVac
    --Meses diferentes
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

--item n) Considerando os dados do cadastro SUS e do cadastro de vacinados elabore e projete duas outras consultas que podem ser feitas sobre esses dados.
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

--Segundo Ponto: Formatação de uma linha da faixa de idade. A saída desta função será uma string com o formato de uma linha da tabela anterior.
formataUmaLinhaGenero :: (Genero, Quantidade)-> LinhaFormatada
--Genero esta entre colchetes para converter o char em uma string
formataUmaLinhaGenero (genero, qtd) = [genero] ++ formataQuant qtd

--Terceiro Ponto: Formatação de todas as linhas das faixas de idade. Esta função usará a função anterior, acrescentará \n ao final de cada linha formatada e concatenará todas as linhas, gerando uma única string.
formataLinhasGenero :: [(Genero, Quantidade)] -> LinhasFormatadas
formataLinhasGenero listaGeneroComQtd = addListaBarraN [formataUmaLinhaGenero generoComQtd | generoComQtd <- listaGeneroComQtd] 

--Quarto Ponto: Formatação da linha de totalização
formataTotalGenero :: [(Genero,Quantidade)] -> TotalFormatado
formataTotalGenero listaGeneroComQtd = "\nTOTAL              " ++ (show (findTotalGenero listaGeneroComQtd)) 
--Somar a quantidade de todas as faixas
findTotalGenero :: [(Genero,Quantidade)] -> Int
findTotalGenero listaGeneroComQtd = sum [qtd |(generoComQtd,qtd) <- listaGeneroComQtd]

--item o) Escolha uma das consultas propostas por você no item anterior e idealize como você exibiria um relatório com os dados dessa consulta, com uma formatação adequada, como exercitado no item (f). Projete a função que realiza a exibição do seu relatório.
listaMunicipioGenero :: CadastroSUS -> Municipio -> [Genero] -> IO()
listaMunicipioGenero myDataBase myMunicipio listaGenero = putStrLn ("MUNICIPIO: " ++  myMunicipio ++ "\nGENERO         QUANTIDADE\n" ++ (formataLinhasGenero (geraListaMunicipioGenero myDataBase myMunicipio listaGenero)) ++ (formataTotalGenero (geraListaMunicipioGenero myDataBase myMunicipio listaGenero)))

--Retorna a lista do estado formatada lindamente
listaEstadoGenero :: CadastroSUS -> Estado -> [Genero] -> IO()
listaEstadoGenero myDataBase myState listaGenero = putStrLn ("ESTADO: " ++ myState ++ "\nGENERO         QUANTIDADE\n" ++ (formataLinhasGenero (geraListaEstadoGenero myDataBase myState listaGenero)) ++ (formataTotalGenero (geraListaEstadoGenero myDataBase myState listaGenero)))


--Cadastros pre-definidos para teste no cadastroSUS
maria :: Cidadao
maria = (53471688765, "Maria Silva", 'F', (21,12,1984),"Rua A, 202","Gloria", "SE", "999880300", "msilva@gmail.com")

marcos :: Cidadao
marcos = (53499988765, "Marcos Santos", 'M', (25,10,2000),"Rua D, 202","Aracaju", "SE", "999880501","msilva@gmail.com")