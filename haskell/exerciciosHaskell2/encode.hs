encode :: Eq a => [a] -> [(a, Int)]
encode [] = []  -- Caso base: Lista vazia retorna lista vazia
encode (x:xs) = (x, 1 + length iguais) : encode resto
    where
        -- Olha para a cauda (xs) e pega todos que repetem o 'x' logo no início
        iguais = takeWhile (== x) xs
        
        -- Olha para a cauda (xs) e remove os repetidos para continuar a próxima volta
        resto  = dropWhile (== x) xs

-- Função Principal
encode :: Eq a => [a] -> [(a, Int)]
encode [] = []
encode (x:xs) = contaTudo x 1 xs
-- Chamamos a auxiliar mandando:
-- 1. O item atual 'x'
-- 2. O contador começando em 1
-- 3. O resto da lista para analisar

-- Função Auxiliar (Quem faz o trabalho pesado)
contaTudo :: Eq a => a -> Int -> [a] -> [(a, Int)]
contaTudo item qtd [] = [(item, qtd)]  -- Se a lista acabou, devolve a última contagem
contaTudo item qtd (y:ys)
    | item == y = contaTudo item (qtd + 1) ys        -- É igual? Aumenta contador, segue recursão
    | otherwise = (item, qtd) : contaTudo y 1 ys     -- É diferente? Fecha a tupla, e começa contar o novo (y) do zero