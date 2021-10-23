{--
    Nome: Alipio Fernando de Paulo Pires, Matricula: 202100022668
    Nome: Guilherme Rosário Alves, Matricula: 202100022784
--}

{-# LANGUAGE OverloadedStrings #-}
import CodeWorld

type World = (Point , Velocidade , Vector)
type Angle = Double
type Velocidade = Double

main = activityOf ((0,0), 2 , (1,0)) update vizualize

vizualize :: World -> Picture
vizualize ((x,y), _, a) = translated x y  (rotated (vectorDirection a) navee)
   where navee = colored (cor) nave
         cor = RGB 0.1 0.2 0.3

nave :: Picture
nave = translated (-x) (-y) (solidPolygon navePol)
  where navePol = [(0,1),(0,-1),(2,0)]
        (x, y) = centroidCouple navePol
   
update :: Event -> World -> World
update (KeyPress "Up")   ((x,y),v,a)
 |otherwise  = ((x,y), v+1, a)
update (KeyPress "Down") ((x,y),v,a) 
 | v <= 0 = ((x ,y), 0 , a)
 |otherwise = ((x ,y), v-1, a)
update (KeyPress "Left")((x,y),v,a) = ((x,y), v , rotatedVector (pi/48) a)
update (KeyPress "Right") ((x,y),v,a) = ((x,y),v ,  rotatedVector (-pi/48) a)
update (TimePassing t) ((x,y),v,a)
   | posx >= 10 || posx <= -10  = ((x+100000, y+100000) , v,  a)
   | posy >= 10 || posy <= -10  = ((x+111111, y+111111) , v,  a)
   | otherwise = (((posx), posy), v ,a)
   where posx = x+ (cos (vectorDirection a)) * (v*t)
         posy = y+ (sin (vectorDirection a)) * (v*t)
update _ ((x,y),v,a)            = ((x,y),v,a)



type Ponto = (Double, Double)

type Poligono = [Ponto]

--Calculate polygon area
polygonArea :: Poligono -> Double
polygonArea poly =  (1/2) * (summation + lastCouple)
    where 
    summation = sum [(xi * snd (findElemPos (i+1) poly ) - fst (findElemPos (i+1) poly ) * yi) | (i, (xi, yi)) <- (positionElem poly), i < (length poly - 1)]
    lastCouple = (ultimoX * primeiroY - primeiroX * ultimoY)
    ultimoX = fst (findElemPos (length poly - 1) poly) 
    primeiroY = snd (findElemPos 0 poly)
    primeiroX = fst (findElemPos 0 poly)
    ultimoY = snd (findElemPos (length poly - 1) poly)

------Index list, assign a position to element 
positionElem :: Poligono -> [(Int, (Double, Double))]
positionElem listCoordinates = zip positions listCoordinates 
    where positions = [0..(length listCoordinates) - 1]

--Find a Coordinate couple using an index
findElemPos :: Int -> Poligono -> Ponto
findElemPos position poly 
    | element == [] = error "Element not find"
    | otherwise = head element
    where element = [(xi, yi) | (i, (xi, yi)) <- (positionElem poly), i == position]

--centroid coordinate calculations
--Cx
centroidX :: Poligono -> Double 
centroidX poly = (1/(6 * polygonArea poly)) * (summation + lastCouple)
    where
    summation = sum [(xi + fst (findElemPos (i+1) poly )) * (xi * snd (findElemPos (i+1) poly ) - fst (findElemPos (i+1) poly ) * yi) | (i, (xi, yi)) <- (positionElem poly), i < (length poly - 1)]
    lastCouple = (ultimoX + primeiroX) * (ultimoX * primeiroY - primeiroX * ultimoY)
    ultimoX = fst (findElemPos (length poly - 1) poly) 
    primeiroY = snd (findElemPos 0 poly)
    primeiroX = fst (findElemPos 0 poly)
    ultimoY = snd (findElemPos (length poly - 1) poly)

--Cy
centroidY :: Poligono -> Double 
centroidY poly = (1/(6 * polygonArea poly)) * (summation + lastCouple) 
    where
    summation = sum [(yi + snd (findElemPos (i+1) poly )) * (xi * snd (findElemPos (i+1) poly ) - fst (findElemPos (i+1) poly ) * yi) | (i, (xi, yi)) <- (positionElem poly), i < (length poly - 1)]
    lastCouple = (ultimoY + primeiroY) * (ultimoX * primeiroY - primeiroX * ultimoY)
    ultimoX = fst (findElemPos (length poly - 1) poly) 
    primeiroY = snd (findElemPos 0 poly)
    primeiroX = fst (findElemPos 0 poly)
    ultimoY = snd (findElemPos (length poly - 1) poly)

--Final Centroid
type Centro = (Double, Double)
centroidCouple :: Poligono -> Centro
centroidCouple poly = (centroidX poly, centroidY poly)