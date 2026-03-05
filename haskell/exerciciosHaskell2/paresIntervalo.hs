paresIntervalo :: Int -> Int ->[Int]
--paresIntervalo a b = [x | x <-[a..b], even x]
paresIntervalo a b = [x | x <-[a..b], mod x 2 == 0]

main = do 
    print(paresIntervalo 1 10) -- [2,4,6,8,10]

