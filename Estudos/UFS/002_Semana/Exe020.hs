module Exe020 where
--LimparTela
import qualified System.Process as SP
clearScreen :: IO ()
clearScreen = do
    _ <- SP.system "reset"
    return ()
--Começo de fato
--Elabore uma função que dados dois inteiros representando dois lados perpendiculares de uma forma geométrica retorne se esta forma é um quadrado ou retângulo.
ehQuadrado comprimeto altura 
    | quadrado = "eh um quadrado"
    | otherwise = "eh um retangulo"
    where
        quadrado = (==) comprimeto altura
--Elabore uma função que dados dois lados perpendiculares do retângulo calcula sua área
retanguloArea :: Float -> Float -> Float
retanguloArea c h = (*) c h

--Usando a função acima, criar outra função que calcula o volume de um cuboide
volumeCuboide :: Float -> Float -> Float -> Float
volumeCuboide a b c = c * (retanguloArea a b)

--Cor e seus signficados com csamento de padrao
corSignificado :: String -> String
corSignificado "branco" = "Branco significa paz"
corSignificado "amarelo" = "Amarelo significa alegria"
corSignificado "verde" = "Verde significa esperança"
corSignificado "azul" = "Azul significa tranquilidade"
corSignificado "vermelho" = "Vermelho significa paixao"
corSignificado _ = "Desculpe, na verdade eu nao acredito nisso..."