quadradosPares :: [Int]
quadradosPares = [x^2 | x <- [1..20], even x]

main = do 
    print (quadradosPares)