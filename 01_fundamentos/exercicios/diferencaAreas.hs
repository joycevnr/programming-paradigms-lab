diferencaAreas :: Float -> Float -> Float
diferencaAreas r1 r2 = area r1 - area r2


area :: Float -> Float
area r = pi * r ^ 2

main = do 
    print (diferencaAreas 2 2)
