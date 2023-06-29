idadeAnos :: Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> Integer
idadeAnos anoNascimento mesNascimento diaNascimento anoAtual mesAtual diaAtual
  | mesAtual < mesNascimento || (mesAtual == mesNascimento && diaAtual < diaNascimento) = anoAtual - anoNascimento - 1
  | otherwise = anoAtual - anoNascimento


idadeAnosMeses :: Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> (Integer, Integer)
idadeAnosMeses anoNascimento mesNascimento diaNascimento anoAtual mesAtual diaAtual
  | mesAtual < mesNascimento || (mesAtual == mesNascimento && diaAtual < diaNascimento) =
      (anoAtual - anoNascimento - 1, 12 - (mesNascimento - mesAtual))
  | otherwise =
      (anoAtual - anoNascimento, mesAtual - mesNascimento)

calcularIdade :: Integer -> Integer -> Integer -> Integer -> Integer -> Integer -> (Integer, Integer, Integer)
calcularIdade anoNascimento mesNascimento diaNascimento anoAtual mesAtual diaAtual
  | mesAtual < mesNascimento || (mesAtual == mesNascimento && diaAtual < diaNascimento) =
      (anoAtual - anoNascimento - 1, 12 - (mesNascimento - mesAtual), diasNoMes mesNascimento - diaNascimento + diaAtual)
  | otherwise =
      (anoAtual - anoNascimento, mesAtual - mesNascimento, diaAtual - diaNascimento)
  where
    diasNoMes :: Integer -> Integer
    diasNoMes mes
      | mes == 2 = if isBissexto anoAtual then 29 else 28
      | mes `elem` [4, 6, 9, 11] = 30
      | otherwise = 31

    isBissexto :: Integer -> Bool
    isBissexto ano = (ano `mod` 4 == 0 && ano `mod` 100 /= 0) || ano `mod` 400 == 0