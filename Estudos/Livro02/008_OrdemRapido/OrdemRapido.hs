module OrdemRapido where

quicksort :: (Ord a) => [a] -> [a] 
quicksort [] = []
quicksort (elem:lista) =
    let smallerSorted = quicksort [elemento | elemento <- lista, elemento <= elem]
        biggerSorted = quicksort [elemento | elemento <- lista, elemento > elem]
    in smallerSorted ++ [elem] ++ biggerSorted