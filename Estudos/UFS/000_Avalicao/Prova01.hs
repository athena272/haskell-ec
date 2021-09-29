----------------------Questao 1
{--
Observe a seguinte propriedade do número 3025:
30 + 25 = 55
55 * 55 = 3025
Calcule a lista com todos os números entre 1000 e 9999 que satisfazem a mesma
propriedade do 3025.
--}

questao1 :: [Int]
questao1 = [numero | numero <- [1000..9999], regrinhaQ1 numero]

regrinhaQ1 :: Int -> Bool
regrinhaQ1 num1 = (convertToInt (pegarDoisPrimeiros num1) + convertToInt (pegarDoisUltimos num1)) ^ 2 == num1 

--Converte um numero para String
convertToString :: Int -> String
convertToString x = (show x)

--Converte um numero para inteiro(precisa passar para a funcao read a referencia do tipo a ser convertido)
convertToInt :: String -> Int
convertToInt x = (read x :: Int )

--Pega os dois primeiros digitos de um numero em valor String
pegarDoisPrimeiros :: Int -> String
pegarDoisPrimeiros x = take 2 (convertToString x)
--Pega os dois ultimos digitos de um numero em valor String
pegarDoisUltimos :: Int -> String
pegarDoisUltimos x = drop 2 (convertToString x)

----------------------Questao 2 
--Considere uma lista de tuplas em que o primeiro elemento da tupla é o nome de uma pessoa, o segundo é o gênero, o terceiro o ano de nascimento e o quarto o estado civil. O gênero admite os valores ‘F’, ‘M’ e ‘X’, os quais denotam, respectivamente, os gêneros feminino, masculino e demais gêneros. O estado civil admite os valores ‘C’, ‘S’, ‘V’ e ‘O’, denotando, respectivamente, os estados civis de casado, solteiro, viúvo e outros estados civis. Declare tipos para todos os dados e elabore uma função para receber essa lista de tuplas e retornar uma tupla, em que o primeiro elemento da tupla é a quantidade de pessoas casadas, o segundo elemento a quantidade de pessoas solteiras, o terceiro elemento a quantidade de pessoas viúvas e o quarto elemento a quantidade de pessoas de outros estados civis. 
type Nome = String
type Genero = Char
type EstadoCivil = Char
type Dia = Int
type Mes = Int
type Ano = Int
type Data = (Dia, Mes, Ano)
type DataNasc = Data
type Quantidade = Int

questao2 :: [(Nome, Genero, DataNasc, EstadoCivil)] -> (Quantidade,Quantidade,Quantidade,Quantidade)
questao2 listaInfo = (qtdCasado listaInfo, qtdSolteiro listaInfo, qtdViuvo listaInfo, qtdOutro listaInfo)

qtdCasado :: [(Nome, Genero, DataNasc, EstadoCivil)] -> Quantidade
qtdCasado listaInfo = length [estadoCivilCasado | (nome, genero, dataNasc, estadoCivilCasado) <- listaInfo, estadoCivilCasado == 'C']

qtdSolteiro :: [(Nome, Genero, DataNasc, EstadoCivil)] -> Quantidade
qtdSolteiro listaInfo = length [estadoCivilSolteiro | (nome, genero, dataNasc, estadoCivilSolteiro) <- listaInfo, estadoCivilSolteiro == 'S'] 

qtdViuvo :: [(Nome, Genero, DataNasc, EstadoCivil)] -> Quantidade
qtdViuvo listaInfo = length [estadoCivilViuvo | (nome, genero, dataNasc, estadoCivilViuvo) <- listaInfo, estadoCivilViuvo == 'V']

qtdOutro :: [(Nome, Genero, DataNasc, EstadoCivil)] -> Quantidade
qtdOutro listaInfo = length [estadoCivilOutro | (nome, genero, dataNasc, estadoCivilOutro) <- listaInfo, estadoCivilOutro == 'O']

----------------------Questao 3 
--Elabore uma função ocorrencias tal que dados um caractere p e uma lista de palavras ps, determina a lista das posições das palavras que iniciam com o caractere informado. Caso não haja nenhuma ocorrência, a função deve retornar a lista vazia. Por exemplo,
ocorrencias :: Char -> [String] -> [Int]
ocorrencias letra listaPalavras = [posicioes | (posicioes, palavras) <- (posicionarElem listaPalavras), letra == head palavras]

----Indexa lista, atribui uma posiçao para elemento
posicionarElem :: [String] -> [(Int, String)]
posicionarElem listaPalavras = zip posicioes listaPalavras 
    where posicioes = [1..(length listaPalavras)]

----------------------Questao 4 
--Elabore uma função que recebe um lista de inteiros não negativos e retorna todos os pares cartesianos formados com somente números pares e somente números ímpares da lista original. Por exemplo, para a lista [1,2,3,4] a função retornará [(1,1),(1,3),(3,1),(3,3),(2,2),(2,4),(4,2),(4,4)]. Caso a lista fornecida pelo usuário não atenda ao exigido no enunciado da questão, uma mensagem de erro deve ser exibida indicando que a lista é inválida. Assim, se o usuário informar a lista [-1,2,3,4], a função está indefinida e uma mensagem de “lista invalida” deve ser exibida.
questao4 :: [Int] -> [(Int, Int)]
questao4 listaNum
    | (verificarNegativoLista listaNum) = error "lista invalida"
    |otherwise = (geraListaImpares listaNum) ++ (geraListaPares listaNum)

geraListaPares :: [Int] -> [(Int, Int)]
geraListaPares listaNum = [(num1, num2) | num1 <- listaNum, num2 <- listaNum, (even num1 && even num2)]

geraListaImpares :: [Int] -> [(Int, Int)]
geraListaImpares listaNum = [(num1, num2) | num1 <- listaNum, num2 <- listaNum, (odd num1 && odd num2)]

verificarNegativoLista :: [Int] -> Bool
verificarNegativoLista listaNum = or [numero < 0 | numero <- listaNum]