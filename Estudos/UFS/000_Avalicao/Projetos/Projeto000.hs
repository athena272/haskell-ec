type Ponto = (Double, Double)

--1. Baseando-se em um dos métodos descritos acima, defina uma função que, dadosdois segmentos, verifique se ambos se intersectam.

--Given three collinear points p, q, r, the function checks if point q lies on line segment 'pr'
onSegment :: Ponto -> Ponto -> Ponto -> Bool
onSegment (xp, yp) (xq, yq) (xr, yr) 
    | (xq <= max xp xr) && (xq >= min xp xr) && (yq <= max yp yr) && (yq >= min yp yr) = True
    | otherwise = False

--To find orientation of ordered triplet (p, q, r).
-- The function returns following values
-- 0 --> p, q and r are collinear
-- 1 --> Clockwise
-- 2 --> Counterclockwise
orientation :: Ponto -> Ponto -> Ponto -> Int
orientation (xp, yp) (xq, yq) (xr, yr) 
    | val == 0 = 0
    | val > 0 = 1
    | otherwise = 2
    where val = (yq - yp) * (xr - xq) - (xq - xp) * (yr - yq)

-- The main function that returns true if line segment 'p1q1'
-- and 'p2q2' intersect.
doIntersect :: Ponto -> Ponto -> Ponto -> Ponto -> Bool
doIntersect p1 q1 p2 q2
    --General Case
    | ori1 /= ori2 && ori3 /= ori4 = True 
    --Special Case
    | ori1 == 0 && onSegment p1 p2 q1 = True -- p1, q1 and p2 are collinear and p2 lies on segment p1q1
    | ori2 == 0 && onSegment p1 q2 q1 = True -- p1, q1 and q2 are collinear and q2 lies on segment p1q1
    | ori3 == 0 && onSegment p2 p1 q2 = True -- p2, q2 and p1 are collinear and p1 lies on segment p2q2
    | ori4 == 0 && onSegment p2 q1 q2 = True -- p2, q2 and q1 are collinear and q1 lies on segment p2q2
    | otherwise = False -- Doesn't fall in any of the above cases
    --Definicao de variaveis
    where 
        ori1 = orientation p1 q1 p2
        ori2 = orientation p1 q1 q2
        ori3 = orientation p2 q2 p1
        ori4 = orientation p2 q2 q1 



--2. Defina uma função para verificar se um segmento se intersecta com um polígono convexo não sólido, ou seja, se o segmento dado intersecta algum lado do polígono.

type Poligono = [Ponto]

--Verify if a segment and a polygon intersect
segmentPolygonIntersect :: Ponto -> Ponto -> Poligono -> Bool
segmentPolygonIntersect p1 q1 poly = or [doIntersect p1 q1 (fst segmentPoly) (snd segmentPoly) | segmentPoly <- (makeListPoints poly)] 

makeListPoints :: Poligono -> [(Ponto, Ponto)]
makeListPoints listaPoints = [(point1, point2) | point1 <- listaPoints, point2 <- listaPoints, point1 /= point2]

--3. Defina uma função para verificar se dois polígonos não sólidos se intersectam.

--Verify if a poly and a poly intersect between bothes
polygonIntersectPolygon :: Poligono -> Poligono -> Bool
polygonIntersectPolygon poly1 poly2 = or [doIntersect (fst segmentPoly1) (snd segmentPoly1) (fst segmentPoly2) (snd segmentPoly2) | segmentPoly1 <- (makeListPoints poly1), segmentPoly2 <- (makeListPoints poly2)]

--4. Defina uma função para calcular a área de um polígono convexo formado pelos vértices 

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

--5. Defina uma função para calcular o centróide (centro de massa) de um polígono convexo.

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
centroidCouple :: Poligono -> (Double, Double)
centroidCouple poly = (centroidX poly, centroidY poly)

--7.  Defina uma função que, caso dois segmentos se intersectem, retorne o ponto de interseção

type Interseccao = Ponto

pointIntersection :: Ponto -> Ponto -> Ponto -> Ponto -> Interseccao 
pointIntersection (xA, yA) (xB, yB) (xC, yC) (xD, yD)
    --Se a equacao da reta for zero e as retas nao se intersectam, elas sao paralelas
    | equationLine == 0 || not (doIntersect (xA, yA) (xB, yB) (xC, yC) (xD, yD))  = error " The lines don't have a Point of Intersection(Are Parallel or Dont' Intersect)"
    | otherwise = (xFinal, yFinal) 
    where
        --Vector AB (a1x + b1y = c1) 
        a1 = yB - yA
        b1 = xA - xB
        c1 = a1 * (xA) + b1 * (yA) 
        --Vector CD (a2x + b2y = c2)
        a2 = yD - yC
        b2 = xC - xD
        c2 = a2 * (xC) + b2 * (yC) 
        --Solve the equation of the line
        equationLine = a1 * b2 - a2 * b1
        --Get the point of intersection 
        xFinal = (b2 * c1 - b1 * c2) / equationLine
        yFinal = (a1 * c2 - a2 * c1) / equationLine