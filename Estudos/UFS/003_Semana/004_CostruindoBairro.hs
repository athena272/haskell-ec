import CodeWorld
import CodeWorld.Sketches

main = drawingOf bairro


--Construindo uma casa
casa :: Color -> Color -> Color -> Bool -> Picture 
casa corCasa corPorta corCarro comChamine = colored orange (teto) & porta & janela & parede & chamine & translated (-2) (-0.5) (car)
    where teto = colored orange (solidPolygon [(0,3), (-3, 1), (3,1)])
          porta = translated 0 (-1) (colored corPorta (solidRectangle 0.8 1))
          janela = translated 0 0.7 (colored grey (solidCircle 0.3))
          car = dilated 0.4 (colored corCarro (sketchedCar))
          parede = colored corCasa (solidRectangle 3 3)
          chamine                                    
            | (comChamine) = translated 1.3 1.8 (solidRectangle 0.2 0.5)
            | otherwise = blank 
    
--construindo uma rua
rua :: Color -> Color -> Color -> Bool -> Color -> Color -> Color -> Bool -> Picture
rua corCasa1 corPorta1 corCarro1 chamine1 corCasa2 corPorta2 corCarro2 chamine2 = (casa corCasa1 corPorta1 corCarro1 chamine1) & translated (-5) 0 (casa corCasa2 corPorta2 corCarro2 chamine2) 

bairro = rua red black yellow True yellow brown blue False & translated 0 5 (rua pink blue purple False blue orange blue True)