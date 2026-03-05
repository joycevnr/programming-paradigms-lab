-- Calcular a transposta de uma matriz representada por uma lista de listas (Ex: [[1,2], [3,4]])

transposta :: [[Int]] -> [[Int]]
transposta ([]:_) = []
transposta matriz = (primeiraColuna) : transposta (restoDaMatriz)
    where
        primeiraColuna = map head matriz
        restoDaMatriz  = map tail matriz