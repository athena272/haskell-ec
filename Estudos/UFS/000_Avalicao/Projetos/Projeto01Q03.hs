--import CodeWorld

--main = putStrLn (show (segmentpolygonIntersect (10, 4) (3, 2) [(0, 0), (3, 3), (1, 5)]))

type Ponto = (Double, Double)

maxTupla :: (Double, Double) -> Double
maxTupla (x, y) 
    | x > y = x
    | otherwise = y

minTupla :: (Double, Double) -> Double
minTupla (x, y)
    | x < y = x
    | otherwise = y

--Given three collinear points p, q, r, the function checks if point q lies on line segment 'pr'
onSegment :: Ponto -> Ponto -> Ponto -> Bool
onSegment (xp, yp) (xq, yq) (xr, yr) 
    | (xq <= maxTupla (xp, xr)) && (xq >= minTupla (xp, xr)) && (yq <= maxTupla (yp, yr)) && (yq >= minTupla (yp, yr)) = True
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
    | (ori1 /= ori2) && (ori3 /= ori4) = True 
    --Special Case
    | (ori1 == 0) && onSegment p1 p2 q2 = True -- p1, q1 and p2 are collinear and p2 lies on segment p1q1
    | (ori2 == 0) && onSegment p1 q2 q1 = True -- p1, q1 and q2 are collinear and q2 lies on segment p1q1
    | (ori3 == 0) && onSegment p2 p1 q2 = True -- p2, q2 and p1 are collinear and p1 lies on segment p2q2
    | (ori4 == 0) && onSegment p2 q1 q2 = True -- p2, q2 and q1 are collinear and q1 lies on segment p2q2
    | otherwise = False -- Doesn't fall in any of the above cases
    --Definicao de variaveis
    where ori1 = orientation p1 q1 p2
          ori2 = orientation p1 q1 q2
          ori3 = orientation p2 q2 p1
          ori4 = orientation p2 q2 q1 

type Poligono = [Ponto]

--Verify if a segment and a polygon intersect
segmentpolygonIntersect :: Ponto -> Ponto -> Poligono -> Bool
segmentpolygonIntersect p1 q1 poly = or [doIntersect p1 q1 (fst segmentPoly) (snd segmentPoly) | segmentPoly <- (makeListPoints poly)] 

makeListPoints :: Poligono -> [(Ponto, Ponto)]
makeListPoints listaPoints = [(point1, point2) | point1 <- listaPoints, point2 <- listaPoints, point1 /= point2]

--Verify if a poly and a poly intersect between bothes
polygonIntersectpolygon :: Poligono -> Poligono -> Bool
polygonIntersectpolygon poly1 poly2 = or [doIntersect (fst segmentPoly1) (snd segmentPoly1) (fst segmentPoly2) (snd segmentPoly2) | segmentPoly1 <- (makeListPoints poly1), segmentPoly2 <- (makeListPoints poly2)]

