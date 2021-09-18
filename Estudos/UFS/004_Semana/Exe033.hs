module Exe033 where
import Data.Char

digits :: String-> String
digits st = [ch | ch <-st, isDigit ch]
