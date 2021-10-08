{-# LANGUAGE OverloadedStrings #-}
import CodeWorld
 
main = animationOf (bolaEm30Graus)



bolaHV :: Double -> Picture
bolaHV tempo = bolaHorizontal tempo & bolaVertical tempo

bolaHorizontal :: Double -> Picture
bolaHorizontal tempo = translated (-10 + tempo * 2) 0 bola

bolaVertical :: Double -> Picture
bolaVertical tempo = translated 0 (10 + (-1)/2 * grav * tempo^2) bola
  where grav = 2

bola = colored purple (solidCircle 1)