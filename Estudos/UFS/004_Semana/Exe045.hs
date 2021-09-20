module Exe045 where

--Dada uma lista de reais, elabore uma função para calcular a soma dos valores da lista maiores ou iguais a 5.0
listaReais :: [Float] -> Float
listaReais lista = sum [elementos | elementos <- lista, elementos >= 5]

--Dada uma lista de reais, elabore uma função para calcular a média dos valores da lista
listaMedia :: [Float] -> Float
listaMedia lista = (sum lista) / fromIntegral (length lista)

--Dada uma lista de notas de alunos, elabore uma função para determinar a lista das notas acima da média das notas da lista.
listaNotasAcimaMedia :: [Float] -> [Float]
listaNotasAcimaMedia listaNotas = [notas | notas <- listaNotas, notas >= (listaMedia listaNotas)]
