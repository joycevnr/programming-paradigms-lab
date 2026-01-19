-- Defina uma função que encontra o i-ésimo elemento de uma lista.

iesimoElemento :: [Int] -> Int -> Int
iesimoElemento (x:xs) 0 = x
iesimoElemento (x:xs) n = iesimoElemento xs (n-1)

main = do 
    print (iesimoElemento [1,2,3] 2)