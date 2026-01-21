maiorElemento :: [Int] -> Int
maiorElemento [x] = x
maiorElemento (x:xs) = max x (maiorElemento xs) 

main = do 
    print (maiorElemento [1,5,3,9,2])

--largest element

--1. Usando guards:
maiorElemento :: [Int] -> Int
maiorElemento [x] = x
maiorElemento (x:xs)
    | x > maiorXs = x
    | otherwise = maiorXs
    where maiorXs = maiorElemento xs


--2. Usando if-then-else:

maiorElemento :: [Int] -> Int
maiorElemento [x] = x
maiorElemento (x:xs) = 
    if x > maiorElemento xs
    then x
    else maiorElemento xs
