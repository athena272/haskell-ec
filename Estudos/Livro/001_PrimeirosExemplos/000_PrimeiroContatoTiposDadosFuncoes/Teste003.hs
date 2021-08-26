module Teste003 where

--Pelo	 fato	 de	 Haskell	 ter	 seus	 dados	 como	 sendo imutáveis,	o	trecho	a	seguir	produzirá	um	erro	de	ambiguidade	de definição.

f :: Int
f = 6

--Vair dar erro, no momento	 em	 que	 tentamos compilar	 o	 trecho	 anterior,	 não	 é	 possível	 distinguir	 as	 duas definições,	causando,	assim,	um	erro	em	tempo	de	compilação
f = 5