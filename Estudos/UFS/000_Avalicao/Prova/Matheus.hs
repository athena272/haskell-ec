module ProvaMatheus where 

--Questao de somatoria
somatoria :: Float -> Float -> Float 
somatoria limInf limSup = sum [sin (2 * pi / a) | a <- [limInf..limSup]]

--Questao de somatoria
somatoria' :: Float -> Float -> Float 
somatoria' limInf limSup = sum [(1 / (sqrt a)) | a <- [limInf..limSup]]

--Questao tres chars
dadoTresChars :: Char -> Char -> Char -> Int
dadoTresChars c1 c2 c3 = (ehMaisculo c1) + (ehMaisculo c2) + (ehMaisculo c3)

semOrdem :: [Int] -> Bool
semOrdem listaNum 
    | temZero listaNum = error "lista invalida"
    | verificaNegativo (snd (quebraListaEmDuasParte1 listaNum)) = True 
    | otherwise = False

quebraListaEmDuasParte1 :: [Int] -> ([Int], [Int])
quebraListaEmDuasParte1 list = span (< 0) list
quebraListaEmDuasParte2 :: [Int] -> ([Int], [Int])
quebraListaEmDuasParte2 list = span (> 0) list


verificaNegativo :: [Int] -> Bool
verificaNegativo list = or [num < 0| num <- list]
temZero :: [Int] -> Bool
temZero list = or [num == 0| num <- list]


--Questao tres chars
--dadosQuatroChars :: Char -> Char -> Char -> Int
--dadoQuatroChars c1 c2 c3 = (ehMaisculo c1) + (ehMaisculo c2) + (ehMaisculo c3)

ehMaisculo :: Char -> Int 
ehMaisculo letra 
    | letra `elem` ['A'..'Z'] = 1
    | otherwise = 0 