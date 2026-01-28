--Defina uma função que recebe uma lista de palavras, e retorna a 
--quantidade de palavras que estão no plural. 
--Considere que qualquer palavra terminada em 's' está no plural.
   
palavrasPlural :: [String] -> Int
palavrasPlural [] = 0
palavrasPlural (x:xs)
    | last x == 's' = plurais + 1
    | otherwise = plurais
    where plurais = palavrasPlural xs

main = do 
    print (palavrasPlural ["gatos", "cachorro", "pássaros", "elefante", "leões"])


-- --- IGNORE ---
somaSimetricos :: [Int] -> Int
somaSimetricos [] = 0
somaSimetricos (x:xs) = x + last xs + somaSimetricos (init xs)
-- --- IGNORE ---