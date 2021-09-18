module Teste015 where

data Pessoa = Fisica String Int | Juridica String

teste :: Pessoa -> (String, String)
teste (Fisica x y) = ("Nome: " ++ x, "Idade: " ++ show y)
teste (Juridica x) = ("Nome: " ++ x, "Nao ha idade")