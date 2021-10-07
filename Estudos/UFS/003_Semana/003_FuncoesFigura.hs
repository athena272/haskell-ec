import CodeWorld
import CodeWorld.Sketches

main = drawingOf bairro


--Construindo uma casa
casa :: Color -> Color -> Color -> Bool -> Picture 
casa cor = teto & porta & parede
    where parede = colored cor (solidRectangle 4 3)
          teto = colored orange (solidPolygon [(0,3), (-3, 1), (3,1)])
          porta = blank

--construindo um bairro
bairro = rua & rua