maiorEntre :: Int -> Int -> Int -> Int
maiorEntre x y z = if x > y && x > z then x
                     else if y > z then y
                     else z 

main = do 
    print (maiorEntre 3 (-5) 2)