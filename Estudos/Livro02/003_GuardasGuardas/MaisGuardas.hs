module MaisGuardas where

imcCalcule :: (RealFloat a) => a -> String
imcCalcule imc 
    | imc <= 18.5 = "Voce esta abaixo do peso!"  
    | imc <= 25.0 = "Supostamente voce esta normal. Pfff, aposto que voce e feio!"  
    | imc <= 30.0 = "Voce esta gordo! Faca uma dieta, gorducho!"  
    | otherwise   = "Voce e uma baleia, meus parabens!"  

--Pedindo o peso e altura
imcCalcule' :: (RealFloat a) => a -> a -> String
imcCalcule' weight height  
    | (weight / height ^ 2) <= 18.5 = "Voce esta abaixo do peso!"  
    | (weight / height ^ 2) <= 25.0 = "Supostamente voce esta normal. Pfff, aposto que voce e feio!"  
    | (weight / height ^ 2) <= 30.0 = "Voce esta gordo! Faca uma dieta, gorducho!"  
    | otherwise   = "Voce e uma baleia, meus parabens!"

--Meu proprio max
max' :: (Ord a) => a -> a -> a
max' x y 
    | x > y = x
    | otherwise = y

--Meu proprio compare
myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT  
--Melhorando o calculo IMC
bestImcCalcule :: (RealFloat a) => a -> a ->String
bestImcCalcule weight height
    | imc <= 18.5 = "Voce esta abaixo do peso!"  
    | imc <= 25.0 = "Supostamente voce esta normal. Pfff, aposto que voce e feio!"  
    | imc <= 30.0 = "Voce esta gordo! Faca uma dieta, gorducho!"  
    | otherwise   = "Voce e uma baleia, meus parabens!"  
    
    where imc = (weight / height ^ 2)

--melhorando ainda mais o IMC
bestImcCalcule' :: (RealFloat a) => a -> a ->String
bestImcCalcule' weight height
    | imc <= skinny = "Voce esta abaixo do peso!"  
    | imc <= normal = "Supostamente voce esta normal. Pfff, aposto que voce e feio!"  
    | imc <= fat = "Voce esta gordo! Faca uma dieta, gorducho!"  
    | otherwise   = "Voce e uma baleia, meus parabens!"   
    where imc = (weight / height ^ 2)
          skinny = 18.5
          normal = 25.0
          fat = 30.0  

--letras inciais de um nome e sobrenome
initialLetters :: String -> String -> String
initialLetters firstName lastName = [first] ++ ". " ++ [last] ++"."
    where (first:_) = firstName
          (last:_) = lastName 

--Cacular IMC de varios em lista, que esta em uma tupla
imcVarios :: (RealFloat a) => [(a, a)] -> [a]
imcVarios listaIMC = [valueIMC peso altura  | (peso, altura) <- listaIMC]   
    where valueIMC peso altura = (peso / altura ^ 2)