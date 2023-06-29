formulaMVU :: Double -> Double -> Double -> Double -> Double
formulaMVU tempo posInicial velInicial  aceleracao = posFinal 
  where
    posFinal = posInicial + (velInicial * tempo) + ((aceleracao * tempo * tempo) / 2)