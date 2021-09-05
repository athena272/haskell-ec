module Exe012 where

--Função heada artificial

artificalHead :: String -> String
artificalHead xs = [(last . reverse) xs]