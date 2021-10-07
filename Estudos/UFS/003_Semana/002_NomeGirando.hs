{-#LANGUAGE OverloadedStrings #-}
import CodeWorld

main = animationOf (nomeGirando)

nome = (lettering "ATHENA")

nomeGirando :: Double -> Picture
nomeGirando tempo = dilated(2 + 0.5 * tempo) (rotated (pi/9 * tempo) nome)