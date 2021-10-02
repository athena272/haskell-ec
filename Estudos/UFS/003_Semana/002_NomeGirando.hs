import CodeWorld

main = drawingOf (nomeGirando)

nome = (lettering "Athena")

nomeGirando :: Double -> Picture
nomeGirando tempo = dislated(2 + 0.5 * tempo) (rotated (pi/9 * t) nome)