module DeixeEstar where

cyLinder :: (RealFloat a) => a -> a -> a
cyLinder raio altura =
    let areaLateral = (2 * pi * raio * altura)
        areaBase = (pi * raio ^ 2)
    in  areaLateral + areaBase * 2

--Calcular IMC com uma lista de peso e altura
calcIMC :: (RealFloat a) => [(a,a)] -> [a]
calcIMC xs = [imc | (peso, altura) <- xs, let imc = peso / altura ^ 2]