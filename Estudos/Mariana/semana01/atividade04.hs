areaTrianguloHeron :: Double -> Double -> Double -> Double
areaTrianguloHeron ladoA ladoB ladoC = semiPerimetro * (semiPerimetro - ladoA) * (semiPerimetro - ladoB) * (semiPerimetro - ladoC) 
  where 
    semiPerimetro = (ladoA + ladoB + ladoC) / 2
  