import CodeWorld
import CodeWorld.Sketches

main = drawingOf (coordinatePlane & casa)


--Construindo uma casa
casa :: Color -> Color -> Color -> Bool -> Picture 
casa corCasa corPorta corCarro temChamine = colored orange (teto) & porta & janela & parede & chamine & translated (-2) (-0.5) (car)

    where teto = solidPolygon[(0,2.5), (-1.5, 1.5), (1.5, 1.5)]
          porta = translated 0 (-1) (colored corPorta)  