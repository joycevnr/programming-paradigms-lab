-- Defina uma função que calcula o tamanho de uma lista.
tamanhoLista :: [t] -> Int
tamanhoLista [] = 0
tamanhoLista (a:as) = 1 + tamanhoLista as