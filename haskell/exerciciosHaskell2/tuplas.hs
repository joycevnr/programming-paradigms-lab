-- Defina uma função que recebe uma lista e um inteiro n e 
--retorna uma tupla de duas listas, os n primeiros elementos e o resto.

tuplas :: [Int] -> Int -> ([Int], [Int])
tuplas x y = (take y x, drop y x)

main = do 
    print (tuplas [1,2,3,4,5] 2)
    print (tuplas [10,20,30,40,50,60] 4)

-- tuplas :: [Int] -> Int -> ([Int], [Int])
-- tuplas xs n = splitAt n xs

-- splitAt :: [a] -> Int -> ([a], [a])
-- splitAt xs n = (take n xs, drop n xs)
-- A função splitAt já está definida na biblioteca padrão do Haskell e faz exatamente o que
-- a função tuplas faz. Ela divide uma lista em duas partes com base no índice fornecido.