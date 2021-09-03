module Baby000 where

doubleMe :: Double -> Double
doubleMe x = x * 2 

doubleUs :: Double -> Double -> Double
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber :: Double -> Double 
doubleSmallNumber x = if x > 100    
                      then x 
                      else doubleMe x 

doubleSmallNumber' :: Double -> Double 
doubleSmallNumber' x = (if x > 100    
                      then x 
                      else doubleMe x) + 1 