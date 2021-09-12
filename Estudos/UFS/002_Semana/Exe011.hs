module Exe011 where

--Calcular área Cilindro abstraindo: 
--Calcular area da base
--Calcular area do contorno lateral

areaCilindro raio altura = 2 * (areaCirculo raio) + (areaContorno raio altura)
    where 
        areaCirculo r = pi * r ^ 2

        areaContorno r h = 2 * pi * r * h
