{-# LANGUAGE OverloadedStrings #-}
import CodeWorld
 
main = animationOf (meuNomeGirando)

meuNome = dilated 2 (lettering "ATHENA")

meuNomeGirando :: Double -> Picture
meuNomeGirando tempo =  rotated (tempo * (pi/9)) meuNome 