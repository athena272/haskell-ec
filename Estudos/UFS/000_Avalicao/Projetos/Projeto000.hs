type Ponto = (Double, Double)

--

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

areaPolyConvexo :: [(Double, Double)] -> Double
areaPolyConvexo [] = 0
areaPolyConvexo xs  = sum (map calculo lista) / 2
    where 
        calculo ((x0, y0), (x1, y1)) = x0 * y1 - x1 * y0
        lista = zip xs (tail xs)
