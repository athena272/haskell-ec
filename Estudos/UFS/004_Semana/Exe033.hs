module Exe033 where

digits :: String-> String
digits st = [ch| ch <-st, isDigit ch]
