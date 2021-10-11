--import CodeWorld

--main = putStrLn (show (polygonIntersectPolygon [(3,3),(6,3),(6,5),(3,5)]  [(0,0),(3,3),(1,5)]))

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
