-- Faça uma função que recebe um numero e retorna verdadeiro se o numero for par.
pares :: Int -> Bool
pares x = if mod x 2 == 0 then True else False
-- ou pares x = if even x then True else False

main = do 
    print (pares 4)
