salario ::Float -> Float
salario abono
    | abono <= 10 = 100
    | abono <= 20 = 200
    | abono <= 30 = 300
    | abono <= 40 = 400
    | otherwise  = 500

main = do
    print (salario 5)