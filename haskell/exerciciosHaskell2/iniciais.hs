iniciais :: [String] -> String
iniciais [] = ""
iniciais (x:xs) = take 1 x ++ iniciais xs

main = do
    print(iniciais ["boa", "oca", "coringa", "amorosa"])
