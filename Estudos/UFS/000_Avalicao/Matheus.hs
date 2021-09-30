module ProvaMatheus where 

--Questao de somatoria
somatoria :: Float -> Float -> Float 
somatoria limInf limSup = sum [sin (2 * pi / a) | a <- [limInf..limSup]]

--Questao tres chars
dadoTresChars :: Char -> Char -> Char -> Int
dadoTresChars c1 c2 c3 = (ehMaisculo c1) + (ehMaisculo c2) + (ehMaisculo c3)

ehMaisculo :: Char -> Int 
ehMaisculo letra 
    | letra `elem` ['A'..'Z'] = 1
    | otherwise = 0 

--Questao sem ordem
semOrdem :: [Int] -> Bool
semOrdem listaNum 
    --tratamento para erro quando tiver 0 na lista
    | temZero listaNum = error "lista invalida"
    --Se o segundo elemento da tupla, que eh uma lista, tive algum negativo, eles estao misturados
    | verificaNegatico (snd (quebraListaEmDuas listaNum)) = True 
    --Caso contrario eh falso
    | otherwise = False  
{--
transforma a lista em uma tupla
O primeiro elemento da tupla é uma lista com os elems da lista dado ate que um elems seja positivo
O segundo elemento da tupla é uma lista com os restos do elementos
--}
quebraListaEmDuas :: [Int] -> ([Int], [Int])
quebraListaEmDuas list = span (< 0) list
{--
verificar se tem numeros negaticos(usada para ver se na segunda parte da tupla, existe uma lista com negativos)
--}
verificaNegatico :: [Int] -> Bool
verificaNegatico list = or [num < 0| num <- list]
{--
verifica se tem zero na lista 
--}
temZero :: [Int] -> Bool
temZero list = or [num == 0| num <- list]