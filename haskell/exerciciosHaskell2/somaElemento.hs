-- Defina uma função que recebe uma lista de inteiros e retorna uma lista com as somas 
-- dos elementos que ocupam posições simétricas (primeiro + último, segundo + penúltimo, 
--terceiro + antepenúltimo, ...).
somaElemento :: [Int] -> [Int]
somaElemento [] = []
somaElemento [x] = [x]
somaElemento (x:xs) = [x + last xs] ++ somaElemento (take (length xs - 1) xs)

main = do 
    print (somaElemento [2,3,4,5,6])