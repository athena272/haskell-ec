import CodeWorld
import CodeWorld.Sketches

main = drawingOf (bairro)

casa :: Color -> Color -> Color -> Bool -> Picture 
casa corCasa corPorta corCarro temChamine = colored orange (teto) & porta & janela & parede & chamine & translated (-2) (-0.5) (car)

    where teto = solidPolygon