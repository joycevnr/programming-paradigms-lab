-- Calcular a transposta de uma matriz representada por uma lista de listas (Ex: [[1,2], [3,4]])

transposta :: [[Int]] -> [[Int]]
-- Caso Base: Se a primeira linha estiver vazia, paramos.
-- Isso acontece quando sobra [[], [], []]
transposta ([]:_) = []

-- Passo Recursivo:
transposta matriz = (primeiraColuna) : transposta (restoDaMatriz)
    where
        primeiraColuna = map head matriz
        restoDaMatriz  = map tail matriz