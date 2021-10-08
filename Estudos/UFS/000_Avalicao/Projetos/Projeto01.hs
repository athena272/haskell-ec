{-# LANGUAGE OverloadedStrings #-}
import CodeWorld

main = drawingOf (intersectam)

type Coordenada = (x, y)

intersectam :: Coordenada -> Coordenada -> Picture
intersectam (x1, y1) (x2, y2)
    | x1 > x2 = lettering "ATHENA"
    | otherwise = lettering "ARTEMIS"
