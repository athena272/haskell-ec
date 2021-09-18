module Exe024 where
--melhorando ainda mais o IMC
bestImcCalcule' :: (Ord a, Show a, Fractional a) => a -> a -> String
bestImcCalcule' weight height
    | imc <= skinny = "Seu IMC eh: " ++ show imc ++ ". Voce esta abaixo do peso!"  
    | imc <= normal = "Seu IMC eh: " ++ show imc ++ ". Supostamente voce esta normal. Pfff, aposto que voce e feio!"  
    | imc <= fat = "Seu IMC eh: " ++ show imc ++ ". Voce esta gordo! Faca uma dieta, gorducho!"  
    | otherwise   = "Seu IMC eh: " ++ show imc ++ ". Voce e uma baleia, meus parabens!"   
    where imc = (weight / height ^ 2)
          skinny = 18.5
          normal = 25.0
          fat = 30.0  