quadradosPares :: [Int]
quadradosPares = [x^2 | x <- [1..20], even x]
--- [transformaçõa | elemento <- listaOriginal, filtro]
main = do 
    print (quadradosPares)