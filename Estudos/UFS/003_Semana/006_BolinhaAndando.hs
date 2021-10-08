{-# LANGUAGE OverloadedStrings #-}
import CodeWorld
 
main = animationOf bolaHorizontal

bolaHorizontal :: Double -> Picture
bolaHorizontal tempo = translated (-10 + tempo * 2) 0 bola

bola = colored purple (solidCircle 1)

