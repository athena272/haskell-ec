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

--
