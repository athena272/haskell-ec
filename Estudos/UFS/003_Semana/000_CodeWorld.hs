import CodeWorld

main = drawingOf (coordinatePlane & casa) 

casa = teto & parede
  where parede = colored red (solidRectangle 4 3)
        teto = colored orange (solidPolygon [(0, 3), (-3, 1), (3, 1)])

minhaFigura = translated 0 7 (rotated (pi/4) (solidRectangle 4 2))
--coordinatePlane